<h2>
<?= $title; ?>
</h2>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/update'); ?>
<input type="hidden" name="IDCUTREMUR" value="<?php echo $post['IDCUTREMUR']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="IDCUTREMUR" placeholder="Add Title" value="<?php echo $post['IDCUTREMUR']; ?>">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea type="text" class="form-control" name="MAGNITUDINE" placeholder="Add body" value="<?php echo $post['MAGNITUDINE']; ?>"></textarea>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>