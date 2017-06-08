<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->


<head>
  <meta charset="UTF-8" />
  <link rel="stylesheet" type = "text/css" href ="http://localhost/TW/css/login_style.css">

  <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->

  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

</head>
<body>
  <div class="container" >

    <header>
      <h1>Inregistreaza-te pentru a afla mai multe detalii despre echipa NEDa!</h1>

    </header>
    <?php 
    $attributes = array("class" => "form-horizontal", "id" => "loginform", "name" => "loginform");
    echo form_open("login/login");?>
    <section>       
      <div id="container_demo" >
        <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
        <div id="wrapper">
          <div id="login" class="animate form">
            <form  action="mysuperscript.php" autocomplete="on"> 
              <h1>Autentificare</h1> 
              <p> 
                <label for="username" class="uname" > Username </label>
                <input id="username" name="username" required="required" type="text" placeholder="username"/>
              </p>
              <p> 
                <label for="password" class="youpasswd"> Parola </label>
                <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
              </p>
            </p>
            <a  href="<?php echo base_url();?>mail/mail">Forgot Password?</a>

            <p class="signin button"> 
              <input type="submit" value="Autentifica-te"/> 
            </p>
            <a  href="<?php echo base_url();?>./indexfb.php">Facebook</a>
            <p class="change_link">
              Inca nu esti un membru?
              <a href="http://localhost/TW/register/register" class="to_register">Inregistreaza-te!</a>
            </p>
          </form>
        </div>
      </section>
    </div>
  </body>
  </html>