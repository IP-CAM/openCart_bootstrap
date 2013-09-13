<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>

<div class="container" style="margin-left: 20px;">
  <?php echo $content_top; ?>
  <? /* #menu
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  */ ?>
 

  <h3><?php echo $text_description; ?></h3>
  <div class="container">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form">
    <div class="row">
      <div class="span4" style="">
        <h4><?php echo $text_order; ?></h4>
          <div class="control-group <? if ($error_firstname){echo 'error';} ?>">
            <label class="control-label" for="inputName"><span class="required">*</span> <?=$entry_firstname; ?></label>
            <div class="controls">
              <input type="text" id="inputName">
              <? if($error_firstname){?>
                <span class="help-inline"><?=$error_firstname;?></span>
              <? } ?>
            </div>
          </div>

          <div class="control-group <? if ($error_lastname){echo 'error';} ?>">
            <label class="control-label" for="input_lastname"><span class="required">*</span> <?=$entry_lastname; ?></label>
            <div class="controls">
              <input type="text" id="input_lastname">
              <? if($error_lastname){?>
                <span class="help-inline"><?=$error_lastname;?></span>
              <? } ?>
            </div>
          </div>

          <div class="control-group <? if ($error_email){echo 'error';} ?>">
            <label class="control-label" for="input_email"><span class="required">*</span> <?=$entry_email; ?></label>
            <div class="controls">
              <input type="text" id="input_email">
              <? if($error_email){?>
                <br><span class="help-inline"><?=$error_email;?></span>
              <? } ?>
            </div>
          </div>
      </div>
      <div class="span5" style="">
        <h5><?php echo $text_product; ?></h5>
          <div class="control-group <? if ($error_telephone){echo 'error';} ?>">
            <label class="control-label" for="input_telephone"><span class="required">*</span> <?=$entry_telephone; ?></label>
            <div class="controls">
              <input type="text" id="input_telephone">
              <? if($error_telephone){?>
                <span class="help-inline"><?=$error_telephone;?></span>
              <? } ?>
            </div>
          </div>

          <div class="control-group <? if ($error__order_id){echo 'error';} ?>">
            <label class="control-label" for="input_order_id"><span class="required">*</span> <?=$entry_order_id; ?></label>
            <div class="controls">
              <input type="text" id="input_oreder_id">
              <? if($error_order_id){?>
                <span class="help-inline"><?=$error_order_id;?></span>
              <? } ?>
            </div>
          </div>

          <div class="control-group">
            <label class="control-label" for="date_ordered"> <?=$entry_date_ordered; ?></label>
            <div class="controls">
              <input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="date" />
            </div>
          </div>
      </div>
    </div>
    <div class="row" style="margin-top: -12em; ">
        <div class="span4" >
          <div class="control-group <? if ($error_lastname){echo 'error';} ?>">
            <label class="control-label" for="input_product"><span class="required">*</span> <?=$entry_product; ?></label>
            <div class="controls">
              <input type="text" id="input_product">
              <? if($error_product){?>
                <span class="help-inline"><?=$error_product;?></span>
              <? } ?>
            </div>
          </div>

          <div class="control-group <? if ($error_lastname){echo 'error';} ?>">
            <label class="control-label" for="input_model"><span class="required">*</span> <?=$entry_model; ?></label>
            <div class="controls">
              <input type="text" id="input_model">
              <? if($error_model){?>
                <span class="help-inline"><?=$error_model;?></span>
              <? } ?>
            </div>
          </div>
      
              <div class="return-quantity"><?php echo $entry_quantity; ?><br />
                <input type="text" name="quantity" value="<?php echo $quantity; ?>" />
              </div>         
        </div>
        <div class="span5" >
            <label> <span class="required">*</span><?php echo $entry_reason; ?><br></label>
            <div class="control-group ">
              <div class="controls">
                <select id="return_reason_id">
                <?php foreach ($return_reasons as $return_reason) { ?>            
                  <option id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></option>
                <? } ?>
                </select>
              </div>
            </div>

            <div class="control-group ">
              <label> <span class="required">*</span> <?php echo $entry_opened; ?></label>
              <div class="controls">
                <select id="return_reason_id">
                  <option id="opened"><?=$text_yes?></option>
                  <option id="unopened"><?=$text_no?></option>
                </select>
              </div>
            </div>
        </div>
    </div>

    <div class="control-group " style="margin-left: 20px">
          <label class="control-label" for="com"><?php echo $entry_fault_detail; ?></label>
          <textarea id="com" name="comment" cols="150" rows="6" style="width: 56%;"><?php echo $comment; ?></textarea>
      

          <div class="control-group <? if ($error_captcha){echo 'error';} ?>">
            <label class="control-label" for="captcha"><?php echo $entry_captcha; ?></label>
            <div class="controls">
              <img src="index.php?route=account/return/captcha" alt="" />
              <input type="text" name="captcha" value="<?php echo $captcha; ?>" id="captcha" style="margin-top: 10px;">
              <? if($error_captcha){?>
                <span class="help-inline"><?=$error_captcha;?></span>
              <? } ?>
              <input type="submit" value="<?php echo $button_continue; ?>" class="btn"/>
            </div>
          </div>
    </div>
    </form>
  </div>
</div>





  <?php echo $content_bottom; ?>
</div>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?>

        <?/*    
            <div class="return-reason"><span class="required">*</span> <b><?php echo $entry_reason; ?></b><br />
              <table>
                <?php foreach ($return_reasons as $return_reason) { ?>
                <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
                <tr>
                  <td width="1"><input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" checked="checked" /></td>
                  <td><label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></td>
                </tr>
                <?php } else { ?>
                <tr>
                  <td width="1"><input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" /></td>
                  <td><label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></td>
                </tr>
                <?php  } ?>
                <?php  } ?>
              </table>
              <?php if ($error_reason) { ?>
              <span class="error"><?php echo $error_reason; ?></span>
              <?php } 
            </div> 
            <div class="return-opened">
              <?php echo $entry_opened; ?>
              <?php if ($opened) { ?>
              <input type="radio" name="opened" value="1" id="opened" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="opened" value="1" id="opened" />
              <?php } ?>
              <label for="opened"><?php echo $text_yes; ?></label>
              <?php if (!$opened) { ?>
              <input type="radio" name="opened" value="0" id="unopened" checked="checked" />
              <?php } else { ?>
              <input type="radio" name="opened" value="0" id="unopened" />
              <?php } ?>
              <label for="unopened"><?php echo $text_no; ?></label>
              <br />

            </div>
            */
            ?>