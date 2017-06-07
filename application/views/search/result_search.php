<h3 style="text-align: center; font-family: Roboto;"><strong>LISTE SUPRAVIETUITORI, RANITI, DECEDATI</strong></h3>

<div id="oras">
	<?php
echo '<table>';

if($search_results_morti > 0 ) {
	echo '<hr>';
echo '<h1> Lista morti </h1>';
echo '<table id="maintable"  class="table">';
echo '<th> Nume </th>';
echo '<th> Prenume </th>';
echo '<th> Oras </th>';
foreach($search_results_morti as $rows) {
     echo '<tr>
            <td>'.$rows->nume.'</td>
            <td>'.$rows->prenume.'</td>
            <td>'.$rows->oras.'</td>
        </tr>';
}
}
else if($search_results_nevatamati > 0){
	echo '<hr>';
echo '<h1> Lista nevatamati </h1>';
echo '<table id="maintable"  class="table">';
echo '<th> Nume </th>';
echo '<th> Prenume </th>';
echo '<th> Oras </th>';
foreach($search_results_nevatamati as $rows) {
     echo '<tr>
            <td>'.$rows->nume.'</td>
            <td>'.$rows->prenume.'</td>
            <td>'.$rows->oras.'</td>
        </tr>';
}
}
else if($search_results_raniti > 0){
	echo '<hr>';
echo '<h1> Lista raniti </h1>';
echo '<table id="maintable"  class="table">';
echo '<th> Nume </th>';
echo '<th> Prenume </th>';
echo '<th> Oras </th>';
foreach($search_results_raniti as $rows) {
    echo '<tr>
            <td>'.$rows->nume.'</td>
            <td>'.$rows->prenume.'</td>
            <td>'.$rows->oras.'</td>
        </tr>';
}
}
else
{
	echo 'No results';
}

echo '</table>';
?>
</div>

