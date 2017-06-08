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
   <?php echo validation_errors(); ?>
  <?php $attributes = array("name" => "registrationform");  echo form_open("register/register", $attributes);?>
    <section>       
      <div id="container_demo" >
      <div id="wrapper">
          <div id="login" class="animate form">
            <form  action="mysuperscript.php" autocomplete="on"> > 
            <h1> Inregistrare </h1> 
            <p> 
                <label for="name" class="name" > Nume </label>
                <input id="name" name="name" required="required" type="text" placeholder="Numex "/>
              </p>
            <p> 
              <label for="usernamesignup" class="uname" >Username</label>
              <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="username" />
            </p>
            <p> 
              <label for="emailsignup" class="youmail"  >Email</label>
              <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="email@mail.com"/> 
            </p>
            <p> 
              <label for="passwordsignup" class="youpasswd" >Parola </label>
              <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
            </p>
            <p> 
              <label for="passwordsignup_confirm" class="youpasswd" >Te rog sa confirmi parola </label>
              <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
            </p>
            <p class="signin button"> 
              <input type="submit" value="Inregistreaza-te"/> 
            </p>
            <p class="change_link">  
              Deja membru ?
              <a href="http://localhost/TW/login/login" class="to_register"> Autentifica-te! </a>
            </p>
          </form>
        </div>

      </div>
    </div>  
  </section>
</div>
</body>
</html>