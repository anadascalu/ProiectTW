<h2>
<?= $title; ?>
</h2>

<?php echo validation_errors(); ?>
<?php echo form_open('posts/create'); ?>
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="IDCUTREMUR" placeholder="Add Title">
  </div>
  <div class="form-group">
    <label>Body</label>
    <textarea type="text" class="form-control" name="MAGNITUDINE" placeholder="Add body"></textarea>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
<?php form_close(); ?>