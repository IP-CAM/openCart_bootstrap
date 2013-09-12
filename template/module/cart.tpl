<section id="tables">
<div id="cart" style="display: none;">
  <div class="heading">
    <a>
      <span id="cart-total">------------ <?php echo $text_items; ?></span> &#x25BC;
    </a>
  </div>
  <div class="container">
  <div class="row12" style="margin: 30px;">
    <?php if ($products || $vouchers) { ?>
      
        <table class="table table-bordered table-striped table-hover">
          <tbody> 
            <?php foreach ($products as $product) { ?>
            <tr style="text-align: left;">
              <td class="span2"><?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>">
                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                </a>
                <?php } ?>
              </td>
              
              <td class="span6"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php foreach ($product['option'] as $option) { ?>
                  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                  <?php } ?>
              </td>
              
              <td class="span1">x&nbsp;<?php echo $product['quantity']; ?></td>
              
              <td class="span2"><?php echo $product['total']; ?></td>
              
              <td class="span1">
                <img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?> #cart > *');" />
              </td>
            </tr>

            <?php } ?>
            <?php foreach ($vouchers as $voucher) { ?>
            <tr>
              <td class="image"></td>
              <td class="name"><?php echo $voucher['description']; ?></td>
              <td class="quantity">x&nbsp;1</td>
              <td class="total"><?php echo $voucher['amount']; ?></td>
              <td class="remove"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?> #cart > *');" /></td>
            </tr>
            <?php } ?>
        </tbody>
      </table>
    </div>

    <?php foreach ($totals as $total) { ?>
      <br><b> <?php echo $total['title']; ?>:</b> <?php echo $total['text']; ?>
    <?php } ?>


      <a href="<?php echo $cart; ?>" class="btn"><?php echo $text_cart; ?></a>
      <a class="btn btn-success" href="<?php echo $checkout; ?>">
        <i class="icon-shopping-cart icon-white"></i><?php echo $text_checkout; ?>
      </a>

    <?php } else { ?>
      <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
</section>
</div>