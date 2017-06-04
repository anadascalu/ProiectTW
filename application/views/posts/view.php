   <h3>
     Cutremurul a avut loc in orasul : <?php echo $post['ORAS']; ?>
   </h3>
   <div class="container">
   <div class="posted-at">
      La data de: <?php echo $post['DATE'];
      ?>
      </div>

   <br>
   <div class="post-body"> Cu magnitudinea de: 
      <?php echo $post['MAGNITUDINE']; ?>
   </div>
</div>

   <hr>
   <a class="btn btn-default" href="posts/edit/<?php echo $post['IDCUTREMUR']; ?>"> EDIT</a>
   <?php echo form_open('/posts/delete/'.$post['IDCUTREMUR']); ?>
   <input type="submit" value="Delete" class="btn btn-danger">
</form>


