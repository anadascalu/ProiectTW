<h2>
<?= $title; ?>
</h2>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/update'); ?>
<input type="hidden" name="idCutremur" value="<?php echo $post['idCutremur']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="idCutremur" placeholder="Add Title" value="<?php echo $post['idCutremur']; ?>">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea type="text" class="form-control" name="magnitudine" placeholder="Add body" value="<?php echo $post['magnitudine']; ?>"></textarea>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>