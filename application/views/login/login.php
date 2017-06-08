<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!--link the bootstrap css file-->
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

     <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
     <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">


     <style type="text/css"{

       .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
       }
       .form-signin .form-signin-heading{
            padding-bottom: 10px;
            margin-bottom: 20px;
            border-bottom: 1px #ccc dotted;
            text-align: center;
       }
       .form-signin .footer{
            padding-top: 10px;
            margin-top: 20px;
            border-top: 1px #ccc dotted;
            font-weight: 600;
       }
       .fa {
            color: #cc0000;
       }
       type="text/css">
       .colbox {
          margin-left: 0px;
          margin-right: 0px;
     }
</style>
</head>
<body>
<div class="container">
     <div class="row">
          <div class="col-lg-4 col-sm-4 well">
               <?php 
               $attributes = array("class" => "form-horizontal", "id" => "loginform", "name" => "loginform");
               echo form_open("login/login");?>
               <fieldset>
                    <legend>Login</legend>
                    <div class="form-group">
                         <div class="row colbox">
                              <div class="col-lg-4 col-sm-4">
                                   <label for="username" class="control-label">Username</label>
                              </div>
                              <div class="col-lg-8 col-sm-8">
                                   <input class="form-control" id="username" name="username" placeholder="username" type="text" value="<?php echo set_value('username'); ?>" />
                                   <span class="text-danger"><?php echo form_error('username'); ?></span>
                              </div>
                         </div>
                    </div>

                    <div class="form-group">
                         <div class="row colbox">
                              <div class="col-lg-4 col-sm-4">
                                   <label for="password" class="control-label">Password</label>
                              </div>
                              <div class="col-lg-8 col-sm-8">
                                   <input class="form-control" id="password" name="password" placeholder="password" type="password" value="<?php echo set_value('password'); ?>" />
                                   <span class="text-danger"><?php echo form_error('password'); ?></span>
                              </div>
                         </div>
                    </div>

                    <div class="form-group">
                         <div class="col-lg-12 col-sm-12 text-center">
                              <input id="btn_login" name="btn_login" type="submit" class="btn btn-default" value="Login" />

                              <a href="<?php echo base_url();?>register/register">Register</a>
                              <a href="<?php echo base_url();?>./indexfb.php">Facebook</a>


                         </div>
                    </fieldset>
                    <?php echo form_close(); ?>
                    <?php echo $this->session->flashdata('user_loggedin'); ?>
                    <div class="footer">
                        <a href="<?php echo base_url();?>mail/mail">Forgot Password?</a>

                        <p>With <i class="fa fa-heart"></i> by <a href='http://localhost/TW/' target="_blank" title="NEPAD TEAM">NEDa TEAM</a>.</p>
                   </div>
              </div>
         </div>
    </div>

    <!--load jQuery library-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!--load bootstrap.js-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>


