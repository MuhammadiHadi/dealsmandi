<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Form</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="<?php echo base_url('assets/css/signup.css'); ?>">
</head>
<body>

  <div class="signup-form">
    <h2 class="mb-5">Sign up to Dealsmandi</h2>
    <p class="text-center mb-5">
    Please fill out this form, and we'll send you a welcome email so you can verify your email address and sign in.
    <br>
    <span class="text-muted">Required fields are marked by an asterisk (*)</span>
    </p>
    <form>
      <div class="form-group">
        <label for="fullName">Your full name *</label>
        <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" required>
      </div>
      <div class="form-group">
        <label for="email">Your email *</label>
        <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
      </div>
      <button type="submit" class="btn btn-primary">Sign up</button>
      <a href="#" class="cancel-link text-muted">Cancel</a>
    </form>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
