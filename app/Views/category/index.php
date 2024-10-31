<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title> <!-- Dynamic title -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/post-list.css'); ?>">   
    <link rel="stylesheet" href="<?php echo base_url('assets/css/checkbox.css'); ?>">   
    <link rel="stylesheet" href="<?php echo base_url('assets/css/index.css'); ?>">   

</head>
<body>
    <!-- Header -->
    <header class="custom-header d-flex justify-content-between align-items-center">
        <div class="left-icons d-flex align-items-center">
            <a href="#" class="back-button me-3" onclick="goBack()">
                <i class="bi bi-arrow-left"></i>
            </a>
            <h4 class="mb-0 fw-bold fs-2">Dealsmandi</h4>
        </div>
    </header>

    <!-- Main Content Section -->
    <div class="text-center">
    <h4 class="mb-4 mt-3 fw-bold pt-3">POST YOUR AD</h4>
    </div>
    <div class="container mt-5">
        <?= $this->renderSection('content') ?>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>

        function goBack() {
                window.history.back(); 
            }
    </script>
</body>
</html>
