<head>

<link rel = "stylesheet" type = "text/css" 
         href = "<?php echo base_url(); ?>css/chart.css">
</head>

<body>
<div class="bg">
<center>
<h3><strong>Nu stiti de ce persoana draga nu va raspunde la telefon?</strong></h3>
<h3>Sunteti ingrijorat?</h3>
<h5>Doriti sa aflati daca totul este ok?</h5>
<h2 style="color: red;"><strong>Aflati acum! Cautati-va persoana draga!</strong></h2>
</center>
<form action="<?php echo site_url('search/search');?>" method = "post">
<div class="wrapper">
<input type="text" name = "nume" placeholder="Nume" />
<br>
<br><input type="text" name= "prenume" placeholder="Prenume" />
<br>
<br><input type="text" name= "oras" placeholder="Oras" />
<br><br>
<input type="submit" value="Cauta..." />
</div>
</form>
</div>
<center>
<h1><strong>Pentru a descarca o lista, apasati unul din butoane:</strong></h1>
<br><br>
<a href="<?php echo base_url('export/csv_morti') ?>" class="btn btn-danger btn-lg">Lista morti</a>

<a href="<?php echo base_url('export/csv_raniti') ?>" class="btn btn-danger btn-lg">Lista raniti</a>

<a href="<?php echo base_url('export/csv_nevatamati') ?>" class="btn btn-danger btn-lg">Lista nevatamati</a>
<br><br><br><br>
</center>
</body>