<?= $this->extend('category/index') ?>
<?= $this->section('content') ?>
    <div class="container my-5">
        <h4 class="mb-4 fw-bold">Choose a category</h4>
           <div class="row g-4">
                <?php foreach ($categoryList as $category): ?>
                     <div class="col-md-4">
                        <a href="<?= base_url('post/' . esc($category->id)); ?>" class="category-card">
                            <div class="category-item d-flex justify-content-between align-items-center">
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
<?= $this->endSection() ?>
