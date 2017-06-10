<head>
  <link rel = "stylesheet"  href = "<?php echo base_url(); ?>/css/inscrieri.css" type = "text/css" >

  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

  <link href="<?php echo base_url(); ?>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link href="<?php echo base_url(); ?>/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
  <!-- Theme CSS -->
  <link href="<?php echo base_url(); ?>/css/creative.min.css" rel="stylesheet" type="text/css">


</head>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/update'); ?>

<body>


  <form>
    <h1><center>Modifica datele cutremurului<i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i></center></h1>

    <div class="contentform">

      <div class="middlecontact">
        <input type="hidden" name="oras" value="<?php echo $post['oras']; ?>">
        <div class="form-group">
    <label>Id</label>
    <input type="text" class="form-control" name="idCutremur" placeholder="Id" value="<?php echo $post['idCutremur']; ?>">
  </div>
  <div class="form-group">
    <label>Oras</label>
    <input type="text" class="form-control" name="oras" placeholder="Oras" value="<?php echo $post['oras']; ?>">
  </div>
  <div class="form-group">
    <label>Magnitudine</label>
    <input type="text" class="form-control" name="magnitudine" placeholder="Magnitudine" value="<?php echo $post['magnitudine']; ?>">
  </div>
  <div class="form-group">
    <label>Durata secunde</label>
    <input type="text" class="form-control" name="durataSecunde" placeholder="Durata secunde" value="<?php echo $post['durataSecunde']; ?>">
  </div>
    </div>
    <button type="submit" class="bouton-contact">Modifica</button>

  </form> 
  <?php form_close(); ?>
</body>
</html>