<head>
  <link rel = "stylesheet"  href = "http://localhost/TW/css/inscrieri.css" type = "text/css" >

  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

  <link href="<?php echo base_url(); ?>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link href="<?php echo base_url(); ?>/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
  <!-- Theme CSS -->
  <link href="<?php echo base_url(); ?>/css/creative.min.css" rel="stylesheet" type="text/css">


</head>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/create'); ?>

<body>


  <form>
    <h1>Inscrie-te ca voluntar in orasul tau. Multumim, echipa NEDa! <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i></h1>

    <div class="contentform">
      <div id="sendmessage"> Ai fost inscris cu succes. Va multumim! </div>


      <div class="leftcontact">
        <div class="form-group">
        <p>Numar voluntar<span>*</span></p>
          <span class="icon-case"><i class="fa fa-id-card-o fa-fw" ></i></span>
          <input type="text" name="idPersoana" placeholder="exemplu: V600"/>
          <div class="validation"></div>
        </div> 

        <div class="form-group">
          <p>Nume <span>*</span></p>
          <span class="icon-case"><i class="fa fa-user fa-fw"></i></span>
          <input type="text" name="nume" placeholder="Nume" />
          <div class="validation"></div>
        </div>

        <div class="form-group">
          <p>Prenume<span>*</span></p>  
          <span class="icon-case"><i class="fa fa-user fa-fw"></i></span>
          <input type="text" name="prenume"  placeholder="Prenume" />
          <div class="validation"></div>
        </div>  

        <div class="form-group">
          <p>Despre <span>*</span></p>
          <span class="icon-case"><i class="fa fa-info fa-fw"></i></span>
          <textarea type="text" rows = "14" name="about"  placeholder="Cateva cuvinte despre tine" />
          </textarea>
          <div class="validation"></div>
        </div>

      </div>

      <div class="rightcontact">  

        <div class="form-group">
          <p>Ocupatie <span>*</span></p>
          <span class="icon-case"><i class="fa fa-building-o fa-fw"></i></span>
          <input type="text" name="studii" placeholder="Student/Loc de munca"/>
          <div class="validation"></div>
        </div>  

        <div class="form-group">
          <p>Varsta <span>*</span></p>  
          <span class="icon-case"><i class="fa fa-question fa-fw"></i></span>
          <input type="text" name="varsta" placeholder="Varsta dvs."/>
          <div class="validation"></div>
        </div>

        <div class="form-group">
          <p>Tara de origine <span>*</span></p>
          <span class="icon-case"><i class="fa fa-globe fa-fw"></i></span>
          <input type="text" name="taraOrigine" placeholder="exemplu: Romania"/>
          <div class="validation"></div>
        </div>

        <div class="form-group">
          <p>Numar de telefon <span>*</span></p> 
          <span class="icon-case"><i class="fa fa-phone fa-fw"></i></span>
          <input type="text" size = "10" name="nrTelefon" placeholder="exemplu: 0755110000"/>
          <div class="validation"></div>
        </div>

        <div class="form-group">
          
<label>Oras</label>
<br>
<select name="idCutremur" >
<option value="C1">Kathmandu1</option>
<option value="C10">Nagarkot</option>
<option value="C11">Kothari1</option>
<option value="C12">Kothari2</option>
<option value="C2">Sagarmatha</option>
<option value="C3">Mechi</option>
<option value="C4">Kathmandu2</option>
<option value="C5">Itahari1</option>
<option value="C6">Nepal-Bihar</option>
<option value="C7">Itahari2</option>
<option value="C8">Pithoragarh</option>
<option value="C9">Kathmandu3</option>
</select></div>  
        </div>  
    </div>
    <button type="submit" class="bouton-contact">Trimite</button>

  </form> 

  <?php form_close(); ?>
</body>
</html>