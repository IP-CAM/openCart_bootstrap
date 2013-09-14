<?php if (count($languages) > 1) { ?>
  <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?=$text_language?><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <?php foreach ($languages as $language) { ?>
        <li>
          <a href="#" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#lang_form').submit();">
            <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
            <?php echo $language['name']; ?>
          </a>
        </li>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="lang_form" style="margin: 0px;">
            <input type="hidden" name="language_code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
      </form>
      </ul>
</li>
<?php } ?>