<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="span9">

  <?php echo $content_top; ?>
  <div class="span9">
    <ul class="breadcrumb" style="margin-left: -1em;">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><?php echo $breadcrumb['separator']; ?>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        </li>
      <?php } ?>
    </ul>
    
    <h3> <?php echo $heading_title; ?></h3>
    <?php if ($thumb || $description) { ?>
    <div class="category-info">
      <?php /* if ($thumb) { ?> <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div><?php } */?>
      <?php if ($description) { echo $description; } ?>
    
    <?php } ?>

  </div>
<div class="row">
  <?php if ($products) { ?>
 
    <div class="btn-group">
      <i class="btn" href="#"><?php echo $text_limit; ?></i>
      <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
      <ul class="dropdown-menu">
        <?php foreach ($limits as $limits) { ?>
          <li><a href="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></a></li>
        <? } ?>
      </ul>
    </div>
    
    <div class="btn-group">
      <i class="btn" href="#"><?php echo $text_sort; ?></i>
      <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
      <ul class="dropdown-menu">
        <?php foreach ($sorts as $sorts) { ?>
          <li><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
        <? } ?>
      </ul>
    </div>

      <?php 

      /* сравнение
    <div><a href="<?php echo $compare; ?>" style="float: right; margin: 0.5em 0em 1.5em 0em;"><?php echo $text_compare; ?></a></div>
      #в принципе нужная штука
  if ($categories) { ?>
  <div class="well">
        <ul class="nav nav-list">
          <li class="nav-header"><?php echo $text_refine; ?></li>
          <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <? } ?>
        </ul>
      </div>
  <? } */?>
    <?/*
      <div class="btn-group row4">
    <a class="btn" href="#"><?php echo $text_refine; ?></a>
    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
    <ul class="dropdown-menu">
      <?php foreach ($categories as $category) { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <? } ?>      
    </ul>
  </div>

    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>*/?>
    <? /* old sort
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  */
  ?>


  <div class="container" style="width: 100%;">
    <?php foreach ($products as $product) { ?>
    <div class="span3" style=" height: 20em;">
    <?php if ($product['special']) { ?>
      <?php } ?>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <div class="description"><?php #echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php
          if (!$product['special']) {?>
              <h4><?=$product['price'];?></h4>
          <?} else { ?>
              <del class="price-old"><?php echo $product['price']; ?></del>&nbsp; <b> <?php echo '-'.$product['percent']; ?>% </b>
              <h4 class="price-new"><?php echo $product['special']; ?></h4>
        <?php } ?>

        <?/*  налоги
        <?php if ($product['tax']) { ?>
        <br />
          <small class="disabled"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></small>
        <?php } ?>
        */?>
      </div>
      <?php } ?>

      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>

      <div class="btn-group">
        <a class="btn btn-primary" href="#" onclick="addToCart('<?php echo $product['product_id']; ?>');">
          <i class="icon-shopping-cart icon-white"></i> <?php echo $button_cart; ?>
        </a>
            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li>
                <a onclick="addToCompare('<?php echo $product['product_id']; ?>');">
                  <?php echo $button_compare; ?>
                </a>
              </li>
              <li>
                <a onclick="addToWishList('<?php echo $product['product_id']; ?>');">
                  <?php echo $button_wishlist; ?>
                </a>
              </li>
            </ul>
      </div>
    </div>


    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>

  <?php echo $content_bottom; ?>
</div>
</div>
</div>





<?/*<script type="text/javascript"><!--
function display(view) {
  if (view == 'list') {
    $('.product-grid').attr('class', 'product-list');
    
    $('.product-list > div').each(function(index, element) {
      html  = '<div class="right">';
      html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
      html += '  <div class="wishlist  btn btn-small">' + $(element).find('.wishlist').html() + '</div>';
      html += '  <div class="compare  btn btn-small">' + $(element).find('.compare').html() + '</div>';
      html += '</div>';     
      
      html += '<div class="left">';
      
      var sale = $(element).find('.sale').html();
      
      if (sale != null) { 
        html += '<div class="sale">' + sale + '</div>';
      }
      
      var image = $(element).find('.image').html();
      
      if (image != null) { 
        html += '<div class="image">' + image + '</div>';
      }
      
      var price = $(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
          
      html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
      html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
      
      var rating = $(element).find('.rating').html();
      
      if (rating != null) {
        html += '<div class="rating">' + rating + '</div>';
      }
        
      html += '</div>';

            
      $(element).html(html);
    });   
    
    $('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
    
    $.cookie('display', 'list'); 
  } else {
    $('.product-list').attr('class', 'product-grid');
    
    $('.product-grid > div').each(function(index, element) {
      html = '';
      
      var sale = $(element).find('.sale').html();
      
      if (sale != null) { 
        html += '<div class="sale">' + sale + '</div>';
      }
      
      var image = $(element).find('.image').html();
      
      if (image != null) {
        html += '<div class="image">' + image + '</div>';
      }
      
      html += '<div class="name">' + $(element).find('.name').html() + '</div>';
      html += '<div class="description">' + $(element).find('.description').html() + '</div>';
      
      var price = $(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
      
      var rating = $(element).find('.rating').html();
      
      if (rating != null) {
        html += '<div class="rating">' + rating + '</div>';
      }
            
      html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
      html += '<div class="wishlist  btn btn-small">' + $(element).find('.wishlist').html() + '</div>';
      html += '<div class="compare  btn btn-small">' + $(element).find('.compare').html() + '</div>';
      
      $(element).html(html);
    }); 
          
    $('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
    
    $.cookie('display', 'grid');
  }
}

view = $.cookie('display');

if (view) {
  display(view);
} else {
  display('list');
}
//--></script> */?>
<?php echo $footer; ?>