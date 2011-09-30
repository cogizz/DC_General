<div id="tl_buttons">
<a href="<?php echo $this->getReferer(true); ?>" class="header_back" title="<?php echo $GLOBALS['TL_LANG']['MSC']['backBT']; ?>" accesskey="b" onclick="Backend.getScrollOffset();"><?php echo $GLOBALS['TL_LANG']['MSC']['backBT']; ?></a>
</div>

<h2 class="sub_headline_all"><?php echo sprintf($GLOBALS['TL_LANG']['MSC']['all_info'], $this->table); ?></h2>
<?php echo $this->getMessages(); ?>

<form class="tl_form" method="post"
  action="<?php echo $this->addToUrl('fields=1'); ?>"
  id="<?php echo $this->table; ?>_all">
  
<div class="tl_formbody_edit">
<input type="hidden" name="FORM_SUBMIT" value="<?php echo $this->table; ?>_all" />
<?php if($this->error): ?>
<p class="tl_error"><?php echo $GLOBALS['TL_LANG']['ERR']['general']; ?></p>
<?php endif; ?>
<div class="tl_tbox block">
  <h3><label for="fields"><?php echo $GLOBALS['TL_LANG']['MSC']['all_fields'][0]; ?></label></h3>
  <?php if($this->error): ?><p class="tl_error"><?php echo $GLOBALS['TL_LANG']['ERR']['all_fields']; ?></p><?php endif; ?>
  <div id="fields" class="tl_checkbox_container">
    <input type="checkbox" id="check_all" class="tl_checkbox" onclick="Backend.toggleCheckboxes(this)" /> <label for="check_all" style="color:#a6a6a6;"><em><?php echo $GLOBALS['TL_LANG']['MSC']['selectAll']; ?></em></label><br />
    <?php foreach($this->fields as $strField => $strLabel): ?>
    <input type="checkbox" name="all_fields[]" class="tl_checkbox"
      id="all_<?php echo $strField; ?>" value="<?php echo $strField; ?>" /> <label
      for="all_<?php echo $strField; ?>" class="tl_checkbox_label"><?php echo $strLabel; ?></label><br />
    <?php endforeach; ?>
  </div>
  <?php if($this->help): ?><p class="tl_help tl_tip"><?php echo $GLOBALS['TL_LANG']['MSC']['all_fields'][1]; ?></p><?php endif; ?>
</div>
</div>

<div class="tl_formbody_submit">
<div class="tl_submit_container">
<input type="submit" name="save" id="save" class="tl_submit" accesskey="s" value="<?php echo $GLOBALS['TL_LANG']['MSC']['continue']; ?>" />
</div>
</div>

</form>