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

  <?php foreach ($styles as $style) { ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>

  <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />  
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
      <div class="container-fluid">
        <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a href="#" class="brand" style="margin-left: 2em;">LOGO</a>
        <div class="nav-collapse">
          <ul class="nav"  style="margin-left: 4em;">
            <li class="divider-vertical"></li>
            <li ><a href="<?=$home?>"><?=$text_home?></a></li>

            <?php foreach ($categories as $category) {
              ?><li class="divider-vertical"></li><?
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
              <li class="dropdown">
                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              </li>
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

            <?/* Multi-level dropdown
            <li class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-submenu">
                  <a href="#">More options</a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Second level link</a></li>
                    <li><a href="#">Second level link</a></li>
                    <li><a href="#">Second level link</a></li>
                    <li><a href="#">Second level link</a></li>
                    <li><a href="#">Second level link</a></li>
                  </ul>
                </li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="nav-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            */?>

            <li class="divider-vertical"></li>
            <?=$language;?>
            <?=$currency;?>
            
          </ul>
          <ul class="nav pull-right">
            <li>
              <form action="index.php" method="GET" class="navbar-search pull-left">
              <input type="hidden" name="route" value="product/search">
              <input type="text" class="search-query span2" placeholder="Поиск" value="<?php echo $filter_name; ?>" name="filter_name">
            </form>
            </li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_account; ?><b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                <li><a href="<?php echo $compare; ?>" id="compare-total-header"><?php echo $text_compare; ?></a></li>
                
                <li class="divider"></li>
                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                <li><a href="#" id="shopping_cart"><?php echo $text_shopping_cart; ?></a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div>
  </div>
</div>

<?/*

<div class="container">
  <div class="row-fluid">
  <!-- LOGO -->
  <?php if ($logo) { ?>
    <div id="logo">
      <a href="<?php echo $home; ?>">
        LOGO
      </a>
    </div>
  <?php } ?>
  <?php echo $cart; ?>

  <?php if ($main_menu == '1') { ?>
    <div id="advanced_menu">
      <?php if ($advanced_categories) {
        echo $advanced_categories;
      } ?>
    </div>
  <?php } ?>


    <div class="span12" style="margin-top:2.5em;">
      <ul class="nav nav-pills">
        <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_account; ?><b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $compare; ?>" id="compare-total-header"><?php echo $text_compare; ?></a></li>
            <li class="divider"></li>
            <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
            <li><a href="#" id="shopping_cart"><?php echo $text_shopping_cart; ?></a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>


  </div>
</div>
  */?>


<div id="notification"></div>
<div style="margin-top: 4em; height: 1px;"></div>

