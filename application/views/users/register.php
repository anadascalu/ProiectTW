<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
<div class="row">
<div class="col-md-4 col-md-offset-4">
<h2 class="text-center"><?= $title; ?> </h2>
<div class="form-group">
	<label> Name </label>
	<input type="text" class="form-control" name="name" placeholder="Name">
</div>

<div class="form-group">
	<label> Username </label>
	<input type="text" class="form-control" name="username" placeholder="UserName">
</div>

<div class="form-group">
	<label> Email </label>
	<input type="text" class="form-control" name="email" placeholder="Email">
</div>

<div class="form-group">
	<label> Password </label>
	<input type="text" class="form-control" name="password" placeholder="Password">
</div>

<div class="form-group">
	<label> Confirm password </label>
	<input type="text" class="form-control" name="password2" placeholder="Password">
</div>

<button type="submit" class="btn btn-primary btn-block"> Submit </button>
</div>
</div>
<?php echo form_close(); ?>