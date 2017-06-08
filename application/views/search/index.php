<head>

<link rel = "stylesheet" type = "text/css" 
         href = "<?php echo base_url(); ?>css/chart.css">
</head>

<body>
<div class="bg">
<center>
<h1 red><strong>Nu stiti de ce persoana draga nu va raspunde la telefon?</strong></h1>
<h2>Sunteti ingrijorat?</h2>
<h3>Doriti sa aflati daca totul este ok?</h3>
<h1 style="color: red;"><strong>Aflati acum! Cautati-va persoana draga!</strong></h1>
</center>

<form action="<?php echo site_url('search/search');?>" method = "post">
<div class="wrapper">
<br><input type="text" name = "nume" placeholder="Nume" />
<br>
<br><input type="text" name= "prenume" placeholder="Prenume" />
<br>
<br><input type="text" name= "oras" placeholder="Oras" />
<br><br>
<input type="submit" value="Cauta..." />
</div>
</form>
</div>
</body>