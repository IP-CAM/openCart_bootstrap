<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/quick_search.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/zoom/zoom.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/bootstrap.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie8.css" />
<![endif]-->
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div class="container">
  
  <!-- LOGO -->
  <?php if ($logo) { ?>
    <div id="logo">
      <a href="<?php echo $home; ?>">
        LOGO
      </a>
    </div>
  <?php } ?>

  <?php echo $cart; ?>
  <!-- ADDRESS 
  <div id="address-data">
    <?php if (($this->config->get('config_display_address') == 1) || ($this->config->get('config_display_telephone') == 1) || ($this->config->get('config_display_fax') == 1) || ($this->config->get('config_display_email') == 1)) { ?>
	   <div class="address-data-header"><?php echo $address_data; ?></div>
	<?php } ?>
	<?php if ($this->config->get('config_display_address') == 1) { ?>
	   <?php echo $address; ?><br />
	<?php } ?>
	<?php if ($this->config->get('config_display_telephone') == 1) { ?>
	   <b><i><?php echo $text_telephone; ?></i></b>
	   <?php echo $telephone; ?>
	<?php } ?>
	<?php if ($this->config->get('config_display_fax') == 1) { ?>
	   <b><i><?php echo $text_fax; ?></i></b>
	   <?php echo $fax; ?>
	<?php } ?>
	<?php if ($this->config->get('config_display_email') == 1) { ?>
	   <br /><b><i><?php echo $text_email; ?></i></b>
	   <?php echo $email; ?>
	<?php } ?>
  </div>


  <a class="brand" href="../">LOGO</a>
  -->

  <!-- MAIN MENU -->
  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
     <div class="container">
       <div class="nav-collapse collapse" id="main-menu">
        <ul class="nav" >
          <?php foreach ($categories as $category) {
            if ( $category['active'] && $category['children'] ) { ?>
              <li class="active dropdown">
                <a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a>
             <?php } elseif ($category['active']){ ?>
              <li class="active">
                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
             <?php } elseif ($category['children']){ ?>
              <li class="dropdown">
                <?// URI: echo $category['href'];?>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $category['name']; ?><b class="caret"></b></a>
            <?php }
            else { ?>
              <li>
                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
            <?php }?>

            <?php if ($category['children']) { ?>
              <?php for ($i = 0; $i < count($category['children']);) { ?>
              <ul class="dropdown-menu">
                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($category['children'][$i])) { ?>
                  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <?php } ?>
            <?php } ?>
          </li>

          <?php } ?>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="container">
<?php if ($main_menu == '1') { ?>
<div id="advanced_menu"><?php if ($advanced_categories) {  echo $advanced_categories; } ?></div>
<?php } else { ?>
<?php if ($categories) { ?>

<div class="span12" style="margin-top:2.5em;">
  <ul class="nav nav-pills">
    <?/*Вывод языка и валюты
    =$language; ?>
    <?=$currency; */?>
    <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
    <? /* <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li> <li class="dropdown"><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>*/?>
    <li><a href="<?php echo $compare; ?>" id="compare-total-header"><?php echo $text_compare; ?></a></li>
    <li><a href="#" id="shopping_cart"><?php echo $text_shopping_cart; ?></a></li>
    <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
    

    <!-- search -->
    <li>
      <form class="navbar-search pull-left" action="index.php" method="GET" >
        <input type="hidden" name="route" value="product/search">
        <input type="text" class="search-query span2" placeholder="Поиск" value="<?php echo $filter_name; ?>" name="filter_name">
      </form>
    </li>
  </ul>
</div>

<?php } ?>
<?php } ?>

<div id="notification"></div>
