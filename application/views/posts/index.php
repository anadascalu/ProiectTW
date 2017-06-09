<head>

<link rel = "stylesheet" type = "text/css" 
         href = "<?php echo base_url(); ?>css/paginare.css">
</head>
<div class="bckgr">
<?php foreach($posts as $post) : ?>
	<center>
	<div style="float: left; display:inline; width: 49%;">
  <strong style="font-size: 30; color: orange;"><?php echo $post['oras']; ?></strong>

  <p> <a style=" border: 1px solid;" type="submit" class="btn btn-default" href="<?php echo site_url('/posts/'.$post['oras']); ?>">Afla mai multe</a></p>
  
  </center>
  </div>
<?php endforeach; ?>
<div class="pagination-links"><center>
<?php echo $this->pagination->create_links(); ?>
<br><br><br>
 <div id="piechart_3d" style="width: 900px; height: 500px;" ></div>
</center>
</div>
</div>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Tip', 'Cutremure'],
          ['Kathmandu' , 7.8],
          ['Nagarkot' , 4.0],
          ['Kothari' , 4.5],
          ['Kothari' , 4.7],
          ['Sagarmatha' , 7.1],
          ['Mechi' , 7.9],
          ['Kathmandu' , 6.5],
          ['Itahari' , 7.7],
          ['Nepal-Bihar' , 5.7],
          ['Itahari' , 8.4],
          ['Pithoragarh' , 6.5],
          ['Kathmandu' , 6.6],
                    ]);

        var options = {
          width: 800 ,
          height: 600,
          title: '',
          is3D: true,
        };

        var chart_div = document.getElementById('piechart_3d');
        var chart = new google.visualization.AreaChart(chart_div);

      chart.draw(data, options);
    }
  </script>

