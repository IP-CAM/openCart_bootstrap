<?/*
<div class="span12">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) {
      if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } 
    } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>
*/?>
<section id="product-slider">
    <div id="ei-slider" class="ei-slider">
        <div class="ei-slider-loading" style="display: none;">Loading</div>
        <ul class="ei-slider-large">
            <li style="opacity: 0; z-index: 1;">
              <div class="image">
                <a href="index.php?route=product/product&amp;product_id=50">
                  <img src="http://sapotero.alwaysdata.net/image/cache/data/demo/apple_cinema_30-200x200.jpg" alt="Sample Product">
                </a>
              </div>
              <div class="ei-title">
                <h2 style="opacity: 0; display: block; margin-right: 0px;">
                  <a href="index.php?route=product/product&amp;product_id=50">Sample Product</a>
                </h2>

                <h3 style="opacity: 0; display: block; margin-right: 0px;">
                  <a href="index.php?route=product/product&amp;product_id=50">
                    Phasellus ipsum tortor, venenatis eu ullamcorper et, imperdiet quis nisi. Sed ultrices velit ut l..
                  </a>
                </h3> 
                <h4 style="opacity: 0; display: block; margin-right: 0px;">
                  <a href="index.php?route=product/product&amp;product_id=50">$1,179.00</a>
                  <br><br>
                  <a href="index.php?route=product/product&amp;product_id=50" class="button" style="font-size:14px;font-weight:bold">Shop Now!</a>
                </h4>
              </div>
            </li>
            <li style="opacity: 0; z-index: 1;">
                <div class="image">
                  <a href="index.php?route=product/product&amp;product_id=51">
                    <img src="http://sapotero.alwaysdata.net/image/cache/data/demo/apple_cinema_30-200x200.jpg" alt="Sample Product" >
                  </a>
                </div>
                <div class="ei-title">
                    <h2 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">Sample Product</a>
                    </h2>

                    <h3 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">Nullam tristique interdum tincidunt. Nulla et orci est. Nam non tincidunt urna. Cras dapibus iacu..</a>
                    </h3> 
                    <h4 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">
                        <span class="price-old" style="font-size:16px; text-decoration:line-through">$149.00</span>
                        <span class="price-new">$129.00</span>
                      </a>
                      <br><br>
                      <a href="index.php?route=product/product&amp;product_id=51" class="button" style="font-size:14px;font-weight:bold">Shop Now!</a>
                    </h4>

                </div>
            </li>
            <li style="opacity: 0; z-index: 1;">
                <div class="image">
                  <a href="index.php?route=product/product&amp;product_id=51">
                    <img src="http://sapotero.alwaysdata.net/image/cache/data/demo/apple_cinema_30-200x200.jpg" alt="Sample Product" >
                  </a>
                </div>
                <div class="ei-title">
                    <h2 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">Sample Product</a>
                    </h2>

                    <h3 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">Nullam tristique interdum tincidunt. Nulla et orci est. Nam non tincidunt urna. Cras dapibus iacu..</a>
                    </h3> 
                    <h4 style="opacity: 0; margin-right: 0px; display: block;">
                      <a href="index.php?route=product/product&amp;product_id=51">
                        <span class="price-old" style="font-size:16px; text-decoration:line-through">$149.00</span>
                        <span class="price-new">$129.00</span>
                      </a>
                      <br><br>
                      <a href="index.php?route=product/product&amp;product_id=51" class="button" style="font-size:14px;font-weight:bold">Shop Now!</a>
                    </h4>
                </div>
            </li>
        </ul>
        <ul class="ei-slider-thumbs">
            <li class="ei-slider-element" style="background: #53A3DF;">Current</li>
            <li style="max-width: 960px; width: 25%; background-color: #F9F9F9;"><a href="#">Sample Product</a></li>
            <li style="max-width: 960px; width: 25%; background-color: #F9F9F9;"><a href="#">Sample Product</a></li>
            <li style="max-width: 960px; width: 25%; background-color: #F9F9F9;"><a href="#">Sample Product</a></li>
        </ul>
    </div>
</section>

<script type="text/javascript" src="catalog/view/theme/default/js/slider.js"></script>
<script type="text/javascript">
  $(function() {
    $('#ei-slider').eislideshow({
      animation     : 'center',
      autoplay      : true,
      slideshow_interval  : 4000,
      titlesFactor    : 0
    });
});
</script>
