<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $content_top; ?>
 <div class="container">  
<?/* Скрываем breadcrumb
  <div class="span12">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <span class="divider"><?=$breadcrumb['separator']; ?></span>
        <a href="<?=$breadcrumb['href']; ?>"><?=$breadcrumb['text']; ?></a>
        <?php } ?>
  </div>
    */?>
  <h2><?php echo $heading_title; ?></h2>
  
  <div class="row-fluid">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <fieldset>
        <div class="span7">
          <legend><?php echo $text_contact; ?></legend>

          <p>
            <span style="font-size: small;">Вас приветствует интернет магазин NN-Market.com. Благодарим Вас за доверие проявленное к нам. Надеюсь нам удастся порадовать Вас нашими товарами и ценами. На данном этапе наш магазин основывается на продаже электроники по привлекательным ценам. Если говорить о достоинствах, то к ним мы относим:
            </span>
          </p>
          <p>Наилучшее время для звонков:<b>14:00 - 20:00 (будни)</b></p>
          <p>Закажите обратный звонок, мы постараемся в скором времени Вам перезвонить.
            <i>(Напишите нам на почту Ваш номер телефона с просьбой перезвонить)</i>
          </p>
          <div>  

            <?/*<b> echo $entry_name; </b><br />*/?>
              <div class="control-group <?php if ($error_name) { echo 'error';} ?>">
                <label class="control-label" for="focusedName"><?=$entry_name?></label>
                <div class="controls">
                  <input type="text" name="name" id="focusedName" class="input-xlarge focused" placeholder="Имя" value="<?php echo $name; ?>">
                  <? if ($error_name){?><span class="help-inline"><?php echo $error_name; ?></span> <? } ?>
                </div>
              </div>

            <?/*<b><?php echo $entry_email; ?></b><br />* <input type="text" name="email" value="<?php echo $email; ?>" class="input-small" placeholder="Электропочта"/>*/?>
              <div class="control-group <?php if ($error_email) { echo 'error';} ?>">
                <label class="control-label" for="focusedMail"><?=$entry_email?></label>
                <div class="controls">
                  <input type="text" name="email" id="focusedMail" class="input-xlarge focused" placeholder="email" value="<?php echo $email; ?>">
                  <?php if ($error_email) { ?> <span class="help-inline"><?php echo $error_email; ?></span> <? } ?>
                </div>
              </div>
        
            <div class="control-group <?php if ($error_enquiry) { echo 'error';} ?>">
              <label class="control-label" for="focusedText"><?php echo $entry_enquiry; ?></label>
              <div class="controls">
                <textarea name="enquiry" id="focusedText" rows="5" class="input-xlarge focused"><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry) { ?><span class="help-inline"><?php echo $error_enquiry; ?></span><? } ?>
              </div>
            </div>
            
            <div class="control-group <?php if ($error_captcha) { echo 'error';} ?>">
              <label class="control-label" for="focusedMail"><?=$entry_captcha?></label>
              <div class="controls">
                <img src="index.php?route=information/contact/captcha" alt="" />
                <input type="text" name="captcha" id="focusedMail" class="input focused" placeholder="captcha" value="<?php echo $captcha; ?>" style="width: 8em;">
                <?php if ($error_captcha) { ?> <span class="help-inline"><?php echo $error_captcha; ?></span> <? } ?>
                <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
              </div>
            </div>

            
          </div>
      </div>

        <!-- ADDRESS -->
      <div class="span5"> 
        <h3><?php echo $text_location; ?></h3>
        <address>
          <strong><?php echo $store; ?></strong><br>
          <?php #echo $text_address; <br>?>
          <?php echo $address; ?><br>
          <?php if ($telephone) { ?>
            <?php echo $text_telephone; ?> 
            <abbr title="Phone"></abbr> <?php echo $telephone; ?>
          <?php } ?>
          <?php if ($fax) { ?>
              <?php echo $text_fax; ?><br>
              <abbr title="Phone"></abbr><?php echo $fax; ?>
          <?php } ?>
        </address>
        <script type="text/javascript" charset="utf-8" src="//api-maps.yandex.ru/services/constructor/1.0/js/?sid=3hAASKrpZCqzRxnEhLlIachM-299SH4I&width=320&height=430"></script>
      </div>
      </fieldset>
    </form>
  </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>