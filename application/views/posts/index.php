<head>
<style>
.pagination-links{
  margin: 30px 0;
}

.pagination-links strong{
  padding: 8px 13px;
  margin: 5px;
  background: #f4f4f4;
  border: 1px #ccc solid;
}

a.pagination-link{
  padding: 8px 13px;
  margin: 5px;
  background: #f4f4f4;
  border: 1px #ccc solid;
}
</style>
</head>

<?php foreach($posts as $post) : ?>
	<?php echo $post['idCutremur']; ?>

	<p> <a class="btn btn-default" href="<?php echo site_url('/posts/'.$post['idCutremur']); ?>"> Read</a></p><br>
	
<?php endforeach; ?>
<body>
<div class="pagination-links">
<?php echo $this->pagination->create_links(); ?>
</div>

 <!-- CHART -->
</body>