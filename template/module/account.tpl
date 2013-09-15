<div class="span3" style="border-radius: 5px; border: 1px solid #f5f5f5; margin-left: 28px;">
  <ul class="nav nav-list">
    <li class="nav-header"><?php echo $heading_title; ?></li>

    <?php if (!$logged) { ?>
      <li>
        <a href="<?php echo $login; ?>">
          <?php echo $text_login; ?>
        </a>
      </li>
      <li>
          <a href="<?php echo $register; ?>">
            <?php echo $text_register; ?>
          </a></li>
      <li>
        <a href="<?php echo $forgotten; ?>">
          <?php echo $text_forgotten; ?>
        </a>
      </li>
      <?php } ?>
      
      <li>
        <a href="<?php echo $account; ?>"><?php echo $text_account; ?>
        </a>
      </li>
    
    <?php if ($logged) { ?>
      <li>
        <a href="<?php echo $edit; ?>">
          <?php echo $text_edit; ?>
        </a>
      </li>
      <li>
        <a href="<?php echo $password; ?>">
          <?php echo $text_password; ?>
        </a>
      </li>
    <?php } ?>
    
    <li>
      <a href="<?php echo $wishlist; ?>">
        <?php echo $text_wishlist; ?>
      </a>
    </li>
    <li>
      <a href="<?php echo $order; ?>">
        <?php echo $text_order; ?>
      </a>
    </li>
    <li>
      <a href="<?php echo $download; ?>">
        <?php echo $text_download; ?>
      </a>
    </li>
    <li>
      <a href="<?php echo $return; ?>">
        <?php echo $text_return; ?>
      </a>
    </li>
    <li>
      <a href="<?php echo $transaction; ?>">
        <?php echo $text_transaction; ?>
      </a>
    </li>
	  <li>
      <a href="<?php echo $customer_support; ?>">
        <?php echo $text_customer_support; ?>
      </a>
    </li>
    <li>
      <a href="<?php echo $newsletter; ?>">
        <?php echo $text_newsletter; ?>
      </a>
    </li>
    
    <?php if ($logged) { ?>
    <li>
      <a href="<?php echo $logout; ?>">
        <?php echo $text_logout; ?>
      </a>
    </li>
    <?php } ?>
  </ul>
</div>
