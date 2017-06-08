<h2>
<?= $title; ?>
</h2>
<head>

<link rel = "stylesheet" type = "text/css" 
         href = "<?php echo base_url(); ?>css/inscrieri.css">
</head>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/create'); ?>
<div class="bckgr">
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

  <div class="form-group">
    <label>Numar voluntar</label>
    <input type="text" class="form-control" name="idPersoana" placeholder="exemplu: V600" style="width: 300px;">
  </div>
  <div class="form-group">
    <label>Nume</label>
    <input type="text" class="form-control" name="nume" placeholder="Nume" style="width: 300px;">
  </div>
  <div class="form-group">
    <label>Prenume</label>
    <input type="text" class="form-control" name="prenume" placeholder="Prenume" style="width: 300px;">
  </div>

  <div class="form-group">
    <label>Despre</label>
    <textarea type="text" class="form-control" name="about" placeholder="Cateva cuvinte despre tine" style="width: 300px;"></textarea>
  </div>
  <div class="form-group">
    <label>Ocupatia</label>
    <input type="text" class="form-control" name="studii" placeholder="Student/Loc de munca" style="width: 300px;">
  </div>
  <div class="form-group">
    <label>Varsta</label>
    <input type="text" class="form-control" name="varsta" placeholder="Varsta dvs." style="width: 300px;">
  </div>

<div class="form-group">
    <label>Tara de Origine</label>
    <input type="text" class="form-control" name="taraOrigine" placeholder="exemplu: Romania" style="width: 300px;">
  </div>

<div class="form-group">
    <label>Numarul de telefon</label>
    <input size="10" type="text" class="form-control" name="nrTelefon" placeholder="exemplu: 0755110000" style="width: 300px;">
  </div>


  <button type="submit" class="btn btn-default" class="img">Inscrie-te</button>
    </div>
</form>
<?php form_close(); ?>