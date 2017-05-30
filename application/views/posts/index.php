<?php foreach($posts as $post) : ?>
	<?php echo $post['IDCUTREMUR']; ?>

	<p> <a class="btn btn-default" href="<?php echo site_url('/posts/'.$post['IDCUTREMUR']); ?>"> Read</a></p>
<?php endforeach; ?>