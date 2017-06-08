<!DOCTYPE html>
<html>
<head>
 <!--link the bootstrap css file-->
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

 <style type="text/css">
   .colbox {
    margin-left: 0px;
    margin-right: 0px;
  }
</style>
</head>
<body>
  <?php echo validation_errors(); ?>
  <?php $attributes = array("name" => "registrationform");  echo form_open("register/register", $attributes);?>

  <div class="container">
    <div class="row colbox">
      <div class="col-lg-4 col-sm-4 well">
        <legend>User Registration Form</legend>
        <div class="panel-body">

          <div class="form-group">
            <label> Name </label>
            <input class="form-control" name="name" placeholder="Name" type="text" />
          </div>

        <div class="form-group">
          <label>Username</label>
          <input class="form-control" name="username" placeholder="Username" type="text" />
        </div>

        <div class="form-group">
          <label >Email ID</label>
          <input class="form-control" name="email" placeholder="Email-ID" type="text" />
        </div>

        <div class="form-group">
          <label >Password</label>
          <input class="form-control" name="password" placeholder="Password" type="password" />
        </div>

        <div class="form-group">
          <label >Confirm Password</label>
          <input class="form-control" name="password2" placeholder="Confirm Password" type="password" />
        </div>

        <div class="form-group">
          <button  type="submit" class="btn btn-primary btn-block">Signup</button>
        </div>


      </div>
    </div>
  </div>
</div>
</div>
<?php echo form_close(); ?>

</body>
</html>