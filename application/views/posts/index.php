<head>

<link rel = "stylesheet" type = "text/css" 
         href = "<?php echo base_url(); ?>css/paginare.css">
</head>
<div class="bckgr">
<?php foreach($posts as $post) : ?>
  <strong style="font-size: 30; color: pink;"><?php echo $post['oras']; ?></strong>

  <p> <a style=" border: 1px solid;" type="submit" class="btn btn-default" href="<?php echo site_url('/posts/'.$post['oras']); ?>">Afla mai multe</a></p><br>
  
<?php endforeach; ?>
<div class="pagination-links">
<?php echo $this->pagination->create_links(); ?>
</div>
</div>
