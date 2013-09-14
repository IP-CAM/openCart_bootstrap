<?php if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')){ ?>
<div class="row-fluid">
  <h3><?php echo $heading_title; ?></h3>
  <div class="box-content">
      <?php foreach ($products as $product) { ?>
        <div style="float: left; margin: 0 15px;">
          <!-- special -->
          <?php if ($product['special']) { /*<div class="sale"><?php echo $product['percent']; %</div>*/ } ?>
      	  
          <!-- thumb --> 
          <?php if ($product['thumb']) { ?>
      	    <div class="boxgrid caption">
              <div class="image">
                <a href="<?php echo $product['href']; ?>">
                  <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                </a>
              </div>
              <?/*
              <div class="cover boxcaption">
                <ul class="nav nav-list"><li class="active">
                <a href="#" data-reveal-id="<?php echo $product['product_id']; ?>" data-animation="fade" class="btn-success">
                  
                  <i class="icon-circle-arrow-right icon-white"></i> info 
                </a>
                </li></ul>
              </div>
              */?>
            </div>
      		<?php } ?>

          <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          
          <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
              </div>
          <?php } ?>
          
          <div class="cart ">
            
            <a type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-success " />
              <i class="icon-shopping-cart icon-white"></i>
              <?php echo $button_cart; ?>
            </a>

          </div>
      	  <?/*
          <div id="<?php echo $product['product_id']; ?>" class="reveal-modal">
      	      <div class="modal" style="margin-top: 2em;">
      		    <div class="contents" style="height: 20em;">
      		      <div class="name"><?php echo $product['name']; ?></div>

      		      <?php if ($product['popup']) { ?>
        		      <div class="left">
        			      <?php if ($product['special']) { ?>
        			        <div class="sale-2"><?php echo $product['percent']; ?>%</div>
        			      <?php } ?>
        			    <div class="images">
                    <a href="<?php echo $product['popups']; ?>" class="cloud-zoom" id='zoom1' rel="adjustX: 10, adjustY:-4, tint:'#000000',tintOpacity:0.2, zoomWidth:510"><img src="<?php echo $product['popup']; ?>" /></a>
                  </div>
        		    </div>
      		    <?php } ?>
      		    
              <div class="right">
        		    <div class="description">
        		      <?php if ($product['manufacturer']) { ?>
        			      <span><?php echo $text_manufacturer; ?></span>
                    <a href="<?php echo $product['manufacturers']; ?>"><?php echo $product['manufacturer']; ?></a><br />
        			    <?php } ?>
        			  
                  <span><?php echo $text_model; ?></span> <?php echo $product['model']; ?><br />
        			  
                  <?php if ($product['reward']) { ?>
                      <span><?php echo $text_reward; ?></span>
                      <?php echo $product['reward']; ?><br />
                  <?php } ?>
        		      <span><?php echo $text_stock; ?></span> <?php echo $product['stock']; ?>
        			  </div>
        		  
              <?php if ($product['price']) { ?>
            		    <div class="price"><?php echo $text_price; ?>
            			  <?php if (!$product['special']) { ?>
            			  <?php echo $product['price']; ?>
            			  <?php } else { ?>
            			  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
            				<br />
            				<span class="savings"><?php echo $text_saving; ?><span style="color: #F00;"><?php echo $product['saving']; ?> (<?php echo $product['percent']; ?>%)</span></span>
            		       <?php } ?>
            			  <br />
            			  
                    <?php if ($product['tax']) { ?>
            				<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span><br />
            			  <?php } ?>
                    
                    <?php if ($product['points']) { ?>
            			  <span class="reward"><small><?php echo $text_points; ?> <?php echo $product['points']; ?></small></span><br />
            			  <?php } ?>
            		    </div>
        		  <?php } ?>

        		  <div style="overflow: visible;">
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
                <?php if ($product['rating']) { ?>
        			     <div class="rating"><?php echo $text_rating; ?>
                      <img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />&nbsp;&nbsp;<?php echo $product['reviews']; ?>
                    </div>
        		    <?php } ?>

              </div>
      			  <div class="clear"></div>
              
              <?php if ($product['minimum'] > 1) { ?>
                <div class="alert alert-info"><?php echo $product['text_minimum']; ?></div>
              <?php } ?>
            <div class="span6" style="margin: 0px; height: 16em; overflow: auto;"><?php echo $product['description']; ?></div>
            
      			</div>
      		   <a class="close-reveal-modal"></a>
      		 </div>
      		</div>
          */?>
      	</div>
      <?php } ?>
  </div>
</div>
<?php } else { ?>
<div class="boxs">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
		<?php if ($product['special']) { ?>
		  <div class="sale"><?php echo $product['percent']; ?>%</div>
        <?php } ?>
		<?php if ($product['price']) { ?>
        <div class="price-2">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old-2"><?php echo $product['price']; ?></span><br /><span class="price-new-2"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['thumb']) { ?>
        <div class="image" style="padding: 0 0 0 4px;text-align:left;"><a href="<?php echo $product['href']; ?>"><img style="width:70px;" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
		<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['rating']) { ?>
         <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<?php } ?>