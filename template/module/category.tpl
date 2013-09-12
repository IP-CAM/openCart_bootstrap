<?php if ($position == 'content_top'  or $position == 'content_bottom') { ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($categories as $category) { ?>
        <div>
          <?php if ($category['thumb']) { ?>
            <div class="image" style="text-align: center">
              <a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a>
            </div>
          <?php } ?>
          <div style="text-align: center"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
        </div>
      <?php } ?>      
    </div>
  </div>
</div>
<?php } else { /* #old?>
<div class="box">
  <div class="box-heading">ss <?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-category">
      <ul>
        <?php foreach ($categories as $category) { ?>
        <li>
          <?php if ($category['category_id'] == $category_id) { ?>
          <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
          <?php } else { ?>
          <a href="<?php echo $category['href']; ?>" class="no-active"><?php echo $category['name']; ?></a>
          <?php } ?>
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li>
              <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="child-active"> - <?php echo $child['name']; ?></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
*/?>

<div class="well">
  <h4><?php echo $heading_title; ?></h4>
  <ul class="nav nav-list">
    <?php foreach ($categories as $category) { ?>
      <li class="nav-header"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php if ($category['children']) { ?>
        <?php foreach ($category['children'] as $child) { ?>
          <li <? if($child['category_id'] == $child_id){echo 'class="active"';} ?> >
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
          </li>
        <? } ?>
      <? } ?>
      <li class="divider"></li>
    <? } ?>
  </ul>
</div>
<?php } ?>