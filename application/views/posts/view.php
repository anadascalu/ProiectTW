   <h2>
      <?php echo $post['IDCUTREMUR']; ?>
   </h2>
   <small class="post-date">
      Posted: <?php echo $post['DATA'];
      ?>

   </small><br>
   <div class="post-body">
      <?php echo $post['MAGNITUDINE']; ?>
   </div>

   <hr>
   <a class="btn btn-default" href="posts/edit/<?php echo $post['IDCUTREMUR']; ?>"> EDIT</a>
   <?php echo form_open('/posts/delete/'.$post['IDCUTREMUR']); ?>
   <input type="submit" value="Delete" class="btn btn-danger">
</form>

