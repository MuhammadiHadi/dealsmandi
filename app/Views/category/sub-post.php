<?= $this->extend('category/index') ?>
<?= $this->section('content') ?>
        <h4 class="mb-4 fw-bold">Choose a category</h4>
        <div class="container category-list">
                <div class="row border">
                    <div class="col-md-4 p-0">
                        <div class="list-group rounded-0">
                        <?php foreach ($categoryList as $category): ?>
                            <a href="#" class="item list-group-item <?= $id == $category->id ? 'active' : ''; ?>" data-id="<?= esc($category->id); ?>">
                            <img class="catImage2 mr-3" src="<?php echo base_url('assets/images/dumyIcon.svg'); ?>" alt=""> <?= esc($category->category_name); ?><i class="bi bi-chevron-right" style="float: inline-end;"></i>
                            </a>
                        <?php endforeach; ?>
                        </div>
                    </div>
                    <!-- Second Column -->
                    <div class="col-md-4 p-0">
                        <div class="list-group list rounded-0">
                        <?php foreach ($subCategoryList as $subCategory): ?>
                            <a href="#" class="sub-list sub-id list-group-item list-group-item-action d-flex align-items-center" data-id="<?= esc($subCategory->id); ?>">
                            <?= esc($subCategory->subcategory_name); ?>
                            </a>
                        <?php endforeach; ?>
                        </div>
                    </div>
                    <div class="col-md-4 p-0 child-view">
                        <div class="list-group child rounded-0">
                            <!-- Child categories will be appended here -->
                        </div>
                    </div>
                </div>
        </div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('.item').on('click', function(event) {
        event.preventDefault();
        var categoryId = $(this).data('id');
        console.log("Category ID:", categoryId);
        $('.item').removeClass('active');
        $(this).addClass('active');

        $.ajax({
            url: '<?= base_url('sub-category/') ?>' + categoryId, 
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                if (response.status) {
                    $('.sub-list').remove();
                    $('.child').empty();
                    var subCategoryListGroup = $('.col-md-4').eq(1).find('.list');
                    
                    response.data.forEach(function(subcategory) {
                       
                        var listItem = $('<a>')
                            .attr('href', '#') 
                            .addClass('sub-list sub-id list-group-item list-group-item-action d-flex align-items-center')
                            .data('id',subcategory.id)
                            .html('' + subcategory.subcategory_name);
                            $('.list').append(listItem);
                    });
                } else {
                    console.error("Error:", response.message);
                }
            },
            error: function(xhr, status, error) {
                console.error("AJAX Error:", status, error);
            }
        });
    });
    $(document).on('click', '.sub-id', function(event) {
        event.preventDefault();
        var subCategoryId = $(this).data('id');
        console.log("Subcategory ID:", subCategoryId);
        $('.sub-id').removeClass('active');
        $(this).addClass('active');
        $.ajax({
            url: '<?= base_url('sub-child-category/') ?>' + subCategoryId, 
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                console.log(response.data);

                if (!response.data || (Array.isArray(response.data) && response.data.length === 0)) {
                    window.location.href = '<?= base_url('sub-category-data/') ?>' + subCategoryId;
                }
                else if (response.status) {
                    $('.child').empty();
                    var subChildCategoryListGroup = $('.child-view').find('.child');

                    response.data.forEach(function(subChildCategory) {
                        var listItem = $('<a>')
                        .attr('href', '<?= base_url('exchange-data/') ?>' + subChildCategory.id)
                        .addClass('sub-child submit-class list-group-item') 
                            .data('id',subChildCategory.id)
                            .html('' + subChildCategory.subcategorythree_name);
                            listItem.on('click', function() {
                                $('.sub-child').removeClass('active'); 
                                $(this).addClass('active'); 
                            });
                        subChildCategoryListGroup.append(listItem);
                    });
                } 
                else {
                    console.error("Error:", response.message);
                }
            },
            error: function(xhr, status, error) {
                console.error("AJAX Error:", status, error);
            }
        });
    });
});
</script>

<?= $this->endSection() ?>

