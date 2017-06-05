   <h3>
     Cutremurul a avut loc in orasul : <?php echo $post['oras']; ?>
   </h3>
   <div class="container">
   <div class="posted-at">
      La data de: <?php echo $post['date'];
      ?>
      </div>

   <br>
   <div class="post-body"> Cu magnitudinea de: 
      <?php echo $post['magnitudine']; ?>
   </div>
</div>

   <hr>
   <a class="btn btn-default" href="edit/<?php echo $post['idCutremur']; ?>"> EDIT</a>
   <?php echo form_open('/posts/delete/'.$post['idCutremur']); ?>
   <input type="submit" value="Delete" class="btn btn-danger">
</form>
