
<?php if (count($languages) > 1) { ?>
  <li class="dropdown">
  

      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Язык <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <?php foreach ($languages as $language) { ?>
        <li>
          <img src="image/flags/<?php echo $language['image']; ?>"
               alt="<?php echo $language['name']; ?>"
               title="<?php echo $language['name']; ?>"
               onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#lang_form').submit();" />
               <?php echo $language['name']; ?>
        </li>
      <?php } ?>
      </ul>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="lang_form">
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </form>
</li>
<?php } ?>