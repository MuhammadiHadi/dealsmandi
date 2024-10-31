<?= $this->extend('category/index') ?>
<?= $this->section('content') ?>

<?php if (isset($subName) || (is_object($subChildName) || isset($subChildName))): ?>
    <div class="container">
        <div class="category-container">
            <div class="row p-4 brdrBottom">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Category</h5>
                </div>
                <div class="col-md-6">
                    <div class="category-details d-flex">
                        <img class="catImage" src="<?php echo base_url('assets/images/dumyImage.png'); ?>" alt="">
                        <div>
                            <strong class="ms-3"><?= $categoryName->category_name ?></strong><br>
                            <span class="ms-3"><?= $subName->subcategory_name ?><?= isset($subChildName->subcategorythree_name) ? esc(" / " . $subChildName->subcategorythree_name) : '' ?></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-end">
                    <a class="text-decoration-none fw-bold fs-6" href="#" data-bs-toggle="modal" data-bs-target="#categoryModal">Change</a>
                </div>
            </div>
            <div class="row p-4 brdrBottom">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Upload Images</h5>
                </div>
                <div class="col-md-9">
                    <div class="upload-grid">
                        <div class="upload-box addBtn">
                            <i class="bi bi-plus-lg"></i>
                        </div>
                        <?php for ($i = 0; $i < 10; $i++): ?>
                            <div class="upload-box" id="uploadBox_<?php echo $i; ?>">
                                <label for="imageInput_<?php echo $i; ?>">
                                    <i class="bi bi-camera-fill"></i>
                                </label>
                                <input type="file" id="imageInput_<?php echo $i; ?>" accept="image/*">
                            </div>
                        <?php endfor; ?>
                        <br>
                    </div>
                    <p class="upload-message">
                        For the cover picture, we recommend using the landscape mode.
                    </p>
                </div>
            </div>
            <?php if(is_object($subName) && isset($subName->subcategory_name) && $subName->subcategory_name == 'Vacation Rentals - Guest Houses'): ?>
                <div class="row p-4">
                    <?= view('component/house/bedrooms') ?>
                </div>
                <div class="row p-4 brdrBottom">
                    <?= view('component/house/bathrooms') ?>
                </div>
            <?php endif; ?>
            <?php if(is_object($subName)&& isset($subName->subcategory_name)&& in_array($subName->subcategory_name, ['Rooms','Roommates & Paying Guests'])):?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Furnished*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container furnished">
                         <?= view('component/redio-button',['id' => 'furnished','name'=>'furnished','label'=>'Furnished',]) ?>
                         <?= view('component/redio-button',['id' => 'not-furnished','name'=>'Not Furnished','label'=>'Not Furnished',]) ?>
                        </div>
                    </div>
                </div>
                <div class="row p-4 brdrBottom">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Type*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container type">
                         <?= view('component/redio-button',['id' => 'single','name'=>'single','label'=>'Single',]) ?>
                         <?= view('component/redio-button',data: ['id' => 'sharing','name'=>'sharing','label'=>'Sharing',]) ?>
                        </div>
                    </div>
                </div>
            <?php endif;?>     
            <?php if(is_object($subName)&& isset($subName->subcategory_name)&& $subName->subcategory_name=='Shops - Offices - Commercial Space'):?>
                <div class="row p-4">
                <?= view('component/type') ?>
                </div>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Floor Level*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Select floor level">
                            <div id="searchResults" class="search-results" data-search-id="10">
                                <div class="search-item">1</div>
                                <div class="search-item">2</div>
                                <div class="search-item">3</div>
                                <div class="search-item">4</div>
                                <div class="search-item">5</div>
                                <div class="search-item">6</div>
                                <div class="search-item">7+</div>
                                <div class="search-item">Ground</div>
                            </div>
                        </div>
                    </div>
                  </div>  
                 <div class="row p-4">
                <?= view('component/shope-office-features') ?>
                </div>
                <div class="row p-4">
                <?= view('component/area-unit') ?>
                </div>
                <div class="row p-4 brdrBottom">
                <?= view('component/area') ?>
                </div>
            <?php endif;?>    
            <?php if(is_object($subName)&& isset($subName->subcategory_name)&& in_array($subName->subcategory_name, ['Houses','Apartments & Flats','Portions & Floors'])):?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Furnished*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container furnished">
                         <?= view('component/redio-button',['id' => 'unfurnished','name'=>'unfurnished','label'=>'Unfurnished',]) ?>
                         <?= view('component/redio-button',['id' => 'furnished','name'=>'wireless','label'=>'Furnished',]) ?>
                        </div>
                    </div>
                </div>
                <div class="row p-4">
                <?= view('component/house/bedrooms') ?>
                </div>
                <div class="row p-4">
                <?= view('component/house/bathrooms') ?>
                </div>
                <?php if ($subName->subcategory_name != 'Houses'): ?>
                    <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Floor Level*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Select floor level">
                            <div id="searchResults" class="search-results" data-search-id="10">
                                <div class="search-item">1</div>
                                <div class="search-item">2</div>
                                <div class="search-item">3</div>
                                <div class="search-item">4</div>
                                <div class="search-item">5</div>
                                <div class="search-item">6</div>
                                <div class="search-item">7+</div>
                                <div class="search-item">Ground</div>
                            </div>
                        </div>
                    </div>
                  </div>  
                <?php endif; ?>
                <?php if (!in_array($subName->subcategory_name, ['Apartments & Flats', 'Portions & Floors'])): ?>
                    <div class="row p-4">
                        <div class="col-md-3">
                            <h5 class="fs-6 fw-bold">Construction State*</h5>
                        </div>
                        <div class="col-md-9">
                            <div class="radio-container finished">
                                <?= view('component/redio-button', ['id' => 'grey-structure', 'name' => 'grey structure', 'label' => 'Grey Structure']) ?>
                                <?= view('component/redio-button', ['id' => 'finished', 'name' => 'finished', 'label' => 'Finished']) ?>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <div class="row p-4">
                <?= view('component/house/house-features') ?>
                </div>
                <div class="row p-4">
                <?= view('component/area-unit') ?>
                </div>
                <div class="row p-4 brdrBottom">
                <?= view('component/area') ?>
                </div>  
            <?php endif;?>   
            <?php if(is_object($subName)&& isset($subName->subcategory_name)&& $subName->subcategory_name=='Land & Plots'):?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Type*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Selec Type">
                            <div id="searchResults" class="search-results" data-search-id="6">
                                <div class="search-item">Agricultural Land</div>
                                <div class="search-item">Commercial Plots</div>
                                <div class="search-item">Files</div>
                                <div class="search-item">Industrial Land</div>
                                <div class="search-item">Residential Plots</div>
                                <div class="search-item">Plot Form</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Features*</h5>
                    </div>
                    <div class="col-md-9">
                    <div class="checkbox-container">
                            <div class="checkbox-item">
                                <input type="checkbox" id="corner-plot" value="Corner Plot">
                                <label for="corner-plot">Corner Plot</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="park-facing" value="Park Facing">
                                <label for="park-facing">Park Facing</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="disputed" value="Disputed">
                                <label for="disputed">Disputed</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="sewerage" value="Sewerage">
                                <label for="sewerage">Sewerage</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="electricity" value="Electricity">
                                <label for="electricity">Electricity</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="water-supply" value="Water Supply">
                                <label for="water-supply">Water Supply</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="gas-supply" value="Gas Supply">
                                <label for="gas-supply">Gas Supply</label>
                            </div>
                            <div class="checkbox-item">
                                <input type="checkbox" id="boundary-wall" value="Boundary Wall">
                                <label for="boundary-wall">Boundary Wall</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row p-4">
                <?= view('component/area-unit') ?>
                </div>
                <div class="row p-4 brdrBottom">
                <?= view('component/area') ?>
               </div>   
            <?php endif;?>    
            <?php if (is_object($subName) &&  isset($subName->subcategory_name) && in_array($subName->subcategory_name, ['Tablets'])):?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Condition*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Select Condition">
                            <div id="searchResults" class="search-results" data-search-id="2">
                                <div class="search-item">New</div>
                                <div class="search-item">Open Box</div>
                                <div class="search-item">Used</div>
                                <div class="search-item">Refurbished</div>
                                <div class="search-item">For Parts or Not Working</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row p-4 brdrBottom">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Brand*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Select Brand">
                            <div id="searchResults" class="search-results" data-search-id="1">
                                <div class="search-item">Apple</div>
                                <div class="search-item">Samsung</div>
                                <div class="search-item">Sony</div>
                                <div class="search-item">LG</div>
                                <div class="search-item">Nokia</div>
                            </div>
                        </div>
                    </div>
                </div>  
            <?php elseif (is_object($subName) &&  isset($subName->subcategory_name) && in_array($subName->subcategory_name, ['Tablets','Mobile Phones'])):?>
                <div class="row p-4 brdrBottom">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Brand*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Select Brand">
                            <div id="searchResults" class="search-results" data-search-id="1">
                                <div class="search-item">Apple</div>
                                <div class="search-item">Samsung</div>
                                <div class="search-item">Sony</div>
                                <div class="search-item">LG</div>
                                <div class="search-item">Nokia</div>
                            </div>
                        </div>
                    </div>
                </div>   
            <?php endif;?>    
            <?php if (is_object($subChildName) &&  isset($subChildName->subcategorythree_name) && in_array($subChildName->subcategorythree_name, ['Chargers', 'Screens', 'Screen Protectors'])): ?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Type*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container device_type">
                            <div class="radio-item">
                                <input type="radio" id="tablet" name="device" value="tablet">
                                <label for="tablet">Tablet</label>
                            </div>
                            <div class="radio-item">
                                <input type="radio" id="mobile" name="device" value="mobile">
                                <label for="mobile">Mobile</label>
                            </div>
                            <div class="radio-item">
                                <input type="radio" id="smart-watch" name="device" value="smart-watch">
                                <label for="smart-watch">Smart Watch</label>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <?php if (is_object($subChildName) &&  isset($subChildName->subcategorythree_name) && in_array($subChildName->subcategorythree_name, ['Charging Cables', 'Chargers'])): ?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Type*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="search-container">
                            <i class="fas fa-search search-icon"></i>
                            <input type="text" id="searchInput" class="search-input" placeholder="Selec Type">
                            <div id="searchResults" class="search-results" data-search-id="4">
                                <div class="search-item">IOS</div>
                                <div class="search-item">Micro-USB/Android</div>
                                <div class="search-item">USB Type-C</div>
                                <div class="search-item">LG</div>
                                <div class="search-item">Others</div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif;?>   
            <?php if (is_object($subChildName) &&  isset($subChildName->subcategorythree_name) && in_array($subChildName->subcategorythree_name, ['Headphones', 'Earphones'])): ?>
                <div class="row p-4">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Type*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container type">
                         <?= view('component/redio-button',['id' => 'wired','name'=>'wired','label'=>'Wired']) ?>
                         <?= view('component/redio-button',['id' => 'wireless','name'=>'wireless','label'=>'Wireless',]) ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <?php if (is_object($subName) &&  isset($subName->subcategory_name) && in_array($subName->subcategory_name, ['Accessories', 'Smart Watches'])): ?>
                <div class="row p-4 brdrBottom">
                    <div class="col-md-3">
                        <h5 class="fs-6 fw-bold">Condition*</h5>
                    </div>
                    <div class="col-md-9">
                        <div class="radio-container new-used">
                            <div class="radio-item ">
                                <input type="radio" id="new" name="condition" value="new">
                                <label for="new">New</label>
                            </div>
                            <div class="radio-item">
                                <input type="radio" id="used" name="condition" value="used">
                                <label for="used">Used</label>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Ad title*</h5>
                </div>
                <div class="col-md-9">
                    <input type="text" id="title" class="search-input" placeholder="">
                    <span class="test-message">Mention the key features of your item (e.g. brand, model, age, type)</span>
                </div>
            </div>
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Description*</h5>
                </div>
                <div class="col-md-9">
                    <textarea id="textArea" class="form-control" rows="5" maxlength="1000" placeholder="Describe the item you’re selling"></textarea>
                    <span class="test-message">Include condition, features and reason for selling</span>
                </div>
            </div>
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Location*</h5>
                </div>
                <div class="col-md-9">
                    <div class="search-container">
                        <i class="fas fa-search search-icon"></i>
                        <input type="text" id="searchInput" class="search-input" placeholder="Select Location">
                        <div id="searchResults" class="search-results" data-search-id="3">
                            <?php foreach ($list_locations as $key => $locations) { ?>
                                <div class="search-item" data-value="<?php echo $locations->id; ?>">
                                    <?php echo $locations->location_title; ?>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="category-container">
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Price*</h5>
                </div>
                <div class="col-md-9">
                    <div class="input-group border d-flex align-items-center py-1 rounded">
                        <div class="borderRight">
                            <span class="">Rs</span>
                        </div>
                        <input type="number" class="form-control border-0" id="phone" placeholder="Amount">
                    </div>
                </div>
            </div>
        </div>
        <div class="category-container mb-4">
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Name*</h5>
                </div>
                <div class="col-md-9">
                    <input type="text" id="title" class="search-input" placeholder="Enter Name">
                </div>
            </div>
            <div class="row p-4">
                <div class="col-md-3">
                    <h5 class="fs-6 fw-bold">Number*</h5>
                </div>
                <div class="col-md-9">
                    <div class="input-group border d-flex align-items-center py-1 rounded">
                        <div class="borderRight">
                            <span class="">+92</span>
                        </div>
                        <input type="tel" class="form-control border-0" id="phone" placeholder="Enter phone number">
                    </div>
                </div>
            </div>
            <div class="row p-4 brdrBottom">
                <div class="col-md-4">
                    <h5 class="fs-6 fw-bold">Show my phone number in ads</h5>
                </div>
                <div class="col-md-8">
                    <div class="form-check form-switch d-flex justify-content-end">
                        <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                    </div>
                </div>
            </div>


            <div class="row p-4">
                <div class="button-right">
                    <button class="fs-6 fw-bold btn-custom">Post Now</button>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>

<div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <div class="d-flex justify-content-end">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="container my-2">
                    <h5 class="mb-4 fw-bold">Choose a Category</h5>
                    <div class="row g-4">
                        <?php foreach ($categoryList as $category): ?>
                            <div class="col-md-4">
                                <a href="#" class="category-card" data-id="<?= esc($category->id);?>">
                                    <div class="first-call category-item d-flex justify-content-between align-items-center">
                                        <div class="d-flex align-items-center gap-2">
                                            <img class="catImage" src="<?php echo base_url('assets/images/dumyImage.png'); ?>" alt="">
                                            <span class="category-name"><?= esc($category->category_name); ?></span>
                                        </div>
                                        <i class="bi bi-chevron-right"></i>
                                    </div>
                                </a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="<?= base_url(relativePath: 'assets/js/checkbox.js'); ?>"></script>

<script>
    function setupRadioButtons(containerClass) {
        const radioItems = document.querySelectorAll(`.${containerClass} .radio-item input[type="radio"]`);
        radioItems.forEach(radio => {
            radio.addEventListener('click', function() {
                radioItems.forEach(item => {
                    item.checked = false;
                    item.parentElement.classList.remove('active');
                });

                if (!radio.checked) {
                    radio.checked = true;
                    radio.parentElement.classList.add('active');
                }
            });
        });
    }
    setupRadioButtons('new-used');
    setupRadioButtons('device_type');
    setupRadioButtons('type');
    setupRadioButtons('furnished');
    setupRadioButtons('finished');
    document.querySelectorAll('.upload-box input[type="file"]').forEach(input => {
        input.addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const uploadBox = this.closest('.upload-box');
                const imgElement = document.createElement('img');
                imgElement.src = URL.createObjectURL(file);
                uploadBox.innerHTML = '';
                uploadBox.appendChild(imgElement);
            }
        });
    });

    function setupSearchFunctionality(container) {
        const searchInput = container.querySelector('.search-input');
        const searchResults = container.querySelector('.search-results');
        const searchItems = container.querySelectorAll('.search-item');
        searchInput.addEventListener('click', function() {
            searchResults.style.display = 'block';
        });
        searchInput.addEventListener('input', function() {
            const filter = searchInput.value.toLowerCase();

            let hasResults = false;
            searchItems.forEach(function(item) {
                const text = item.textContent.toLowerCase();
                if (text.includes(filter)) {
                    item.style.display = 'block';
                    hasResults = true;
                } else {
                    item.style.display = 'none';
                }
            });

            if (hasResults) {
                searchResults.style.display = 'block';
            } else {
                searchResults.style.display = 'none';
            }
        });

        document.addEventListener('click', function(e) {
            if (!container.contains(e.target)) {
                searchResults.style.display = 'none';
            }
        });

        searchItems.forEach(function(item) {
            item.addEventListener('click', function() {
                searchInput.value = item.textContent;
                searchResults.style.display = 'none';
            });
        });
    }

    document.querySelectorAll('.search-container').forEach(function(container) {
        setupSearchFunctionality(container);
    });


    $(document).ready(function() {
        $(document).on('click', '.category-card', function(event) {
            event.preventDefault();
            const categoryId = $(this).data('id');

            $('#categoryModal').modal('hide');

            window.location.href = '<?= base_url('model/') ?>' + categoryId;
        });
    });
</script>

<?= $this->endSection() ?>