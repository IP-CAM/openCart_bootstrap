<?php if (count($currencies) > 1) { ?>
<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Валюта <b class="caret"></b></a>
    <ul class="dropdown-menu">
    <?php foreach ($currencies as $currency) { ?>
            <li>
                <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#curr_form').submit();"><?php echo $currency['symbol_left'].$currency['symbol_right']." - ".$currency['title'];; ?></a>
            </li>
    <?}?>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="curr_form">
        <input type="hidden" name="currency_code" value="" />
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </form>
</li>
<?php } ?>