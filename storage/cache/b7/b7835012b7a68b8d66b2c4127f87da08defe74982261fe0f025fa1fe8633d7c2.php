<?php

/* tt_lazio1/template/common/header.twig */
class __TwigTemplate_c8742c9ecee81a5fc1646cbcbc7998f5ad0d665586d8c0d049261fa5d54f3a69 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir=\"";
        // line 3
        echo (isset($context["direction"]) ? $context["direction"] : null);
        echo "\" lang=\"";
        echo (isset($context["lang"]) ? $context["lang"] : null);
        echo "\" class=\"ie8\"><![endif]-->
<!--[if IE 9 ]><html dir=\"";
        // line 4
        echo (isset($context["direction"]) ? $context["direction"] : null);
        echo "\" lang=\"";
        echo (isset($context["lang"]) ? $context["lang"] : null);
        echo "\" class=\"ie9\"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir=\"";
        // line 6
        echo (isset($context["direction"]) ? $context["direction"] : null);
        echo "\" lang=\"";
        echo (isset($context["lang"]) ? $context["lang"] : null);
        echo "\">
<!--<![endif]-->
<head>
<meta charset=\"UTF-8\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
<title>";
        // line 12
        echo (isset($context["title"]) ? $context["title"] : null);
        echo "</title>
<base href=\"";
        // line 13
        echo (isset($context["base"]) ? $context["base"] : null);
        echo "\" />
";
        // line 14
        if ((isset($context["description"]) ? $context["description"] : null)) {
            // line 15
            echo "<meta name=\"description\" content=\"";
            echo (isset($context["description"]) ? $context["description"] : null);
            echo "\" />
";
        }
        // line 17
        if ((isset($context["keywords"]) ? $context["keywords"] : null)) {
            // line 18
            echo "<meta name=\"keywords\" content=\"";
            echo (isset($context["keywords"]) ? $context["keywords"] : null);
            echo "\" />
";
        }
        // line 20
        echo "<script src=\"catalog/view/javascript/jquery/jquery-2.1.1.min.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/wow.min.js\" type=\"text/javascript\"></script>
<script>
    new WOW().init();\t\t\t
</script>
<script src=\"catalog/view/javascript/jquery/jquery-ui.min.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/ocquickview/ocquickview.js\" type=\"text/javascript\"></script>
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/ocquickview/css/ocquickview.css\" rel=\"stylesheet\" type=\"text/css\" />
<script src=\"catalog/view/javascript/jquery/owl-carousel/js/owl.carousel.min.js\" type=\"text/javascript\"></script>
<link href=\"catalog/view/javascript/jquery/owl-carousel/css/owl.carousel.min.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/javascript/jquery/owl-carousel/css/owl.theme.green.min.css\" rel=\"stylesheet\" />
<script src=\"catalog/view/javascript/jquery/elevatezoom/jquery.elevateZoom-3.0.8.min.js\" type=\"text/javascript\"></script>
<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.2/dist/jquery.fancybox.min.css\" />
<script src=\"https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.2/dist/jquery.fancybox.min.js\"></script>
<script src=\"catalog/view/javascript/opentheme/countdown/jquery.plugin.min.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/countdown/jquery.countdown.min.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/hozmegamenu/custommenu.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/vermegamenu/ver_menu.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/opentheme/vermegamenu/ver_mobile_menu.js\" type=\"text/javascript\"></script>
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/countdown/jquery.countdown.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/hozmegamenu/css/custommenu.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/vermegamenu/css/ocvermegamenu.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/css/animate.css\" rel=\"stylesheet\" />
<script src=\"https://use.fontawesome.com/db54e04b9a.js\"></script>
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/layoutproducts/layoutproducts.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/opentheme/animate.css\" rel=\"stylesheet\" />
<link href=\"catalog/view/javascript/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\" />
<script src=\"catalog/view/javascript/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>
<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">
<link href=\"catalog/view/javascript/material-design-iconic-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"catalog/view/javascript/ionicons/css/ionicons.min.css\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"//fonts.googleapis.com/css?family=Quicksand:400,500,700\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"//fonts.googleapis.com/css?family=Oswald:400,500,600,700\" rel=\"stylesheet\" type=\"text/css\" />
<link href=\"catalog/view/theme/tt_lazio1/stylesheet/stylesheet.css\" rel=\"stylesheet\">
<link href=\"https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&amp;subset=cyrillic,cyrillic-ext\" rel=\"stylesheet\">
";
        // line 56
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["styles"]) ? $context["styles"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["style"]) {
            // line 57
            echo "<link href=\"";
            echo $this->getAttribute($context["style"], "href", array());
            echo "\" type=\"text/css\" rel=\"";
            echo $this->getAttribute($context["style"], "rel", array());
            echo "\" media=\"";
            echo $this->getAttribute($context["style"], "media", array());
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['style'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 59
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["scripts"]) ? $context["scripts"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 60
            echo "<script src=\"";
            echo $context["script"];
            echo "\" type=\"text/javascript\"></script>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['script'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 62
        echo "<script src=\"catalog/view/javascript/common.js\" type=\"text/javascript\"></script>
<script src=\"catalog/view/javascript/SmoothScroll.js\" type=\"text/javascript\"></script>


<script src=\"catalog/view/javascript/parallax.js\"></script>
";
        // line 67
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["links"]) ? $context["links"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 68
            echo "<link href=\"";
            echo $this->getAttribute($context["link"], "href", array());
            echo "\" rel=\"";
            echo $this->getAttribute($context["link"], "rel", array());
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 70
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["analytics"]) ? $context["analytics"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["analytic"]) {
            // line 71
            echo $context["analytic"];
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['analytic'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 73
        if ($this->getAttribute((isset($context["theme_option_status"]) ? $context["theme_option_status"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array")) {
            // line 74
            echo "  <script src=\"https://ajax.googleapis.com/ajax/libs/webfont/1.5.10/webfont.js\"></script>
  <script>
    WebFont.load({
      google: {
        ";
            // line 78
            if (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array()) == $this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array()))) {
                // line 79
                echo "\t\tfamilies: ['";
                echo (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) ? ($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) : (""));
                echo "']
\t\t";
            } else {
                // line 81
                echo "\t\tfamilies: ['";
                echo (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) ? ($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) : (""));
                echo "', '";
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) ? ($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) : (""));
                echo "']
\t\t";
            }
            // line 83
            echo "      }
    });
  </script>
  <style>
    ";
            // line 87
            if ((isset($context["a_tag"]) ? $context["a_tag"] : null)) {
                // line 88
                echo "    ";
                echo (($this->getAttribute($this->getAttribute((isset($context["a_tag"]) ? $context["a_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) ? ((("a { color: #" . $this->getAttribute($this->getAttribute((isset($context["a_tag"]) ? $context["a_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) . "; }")) : (""));
                echo "
    ";
                // line 89
                echo (($this->getAttribute($this->getAttribute((isset($context["a_tag"]) ? $context["a_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "hover_color", array())) ? ((("a:hover { color: #" . $this->getAttribute($this->getAttribute((isset($context["a_tag"]) ? $context["a_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "hover_color", array())) . "; }")) : (""));
                echo "
    ";
            }
            // line 91
            echo "
    ";
            // line 92
            if ((isset($context["header_tag"]) ? $context["header_tag"] : null)) {
                // line 93
                echo "    h1, h2, h3, h4, h5, h6 {
    ";
                // line 94
                echo (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) ? ((("color: #" . $this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) . ";")) : (""));
                echo "
    ";
                // line 95
                echo (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) ? ((("font-family: " . $this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) . ";")) : (""));
                echo "
    ";
                // line 96
                echo (($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_weight", array())) ? ((("font-weight: " . $this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_weight", array())) . ";")) : (""));
                echo "
    }
    ";
                // line 98
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h1", array()), "font_size", array())) ? ((("h1 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h1", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
                // line 99
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h2", array()), "font_size", array())) ? ((("h2 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h2", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
                // line 100
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h3", array()), "font_size", array())) ? ((("h3 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h3", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
                // line 101
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h4", array()), "font_size", array())) ? ((("h4 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h4", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
                // line 102
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h5", array()), "font_size", array())) ? ((("h5 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h5", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
                // line 103
                echo (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h6", array()), "font_size", array())) ? ((("h6 { font-size: " . $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["header_tag"]) ? $context["header_tag"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "h6", array()), "font_size", array())) . "; }")) : (""));
                echo "
    ";
            }
            // line 105
            echo "
    ";
            // line 106
            if ((isset($context["body_css"]) ? $context["body_css"] : null)) {
                // line 107
                echo "    body {
    ";
                // line 108
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) ? ((("color: #" . $this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "color", array())) . ";")) : (""));
                echo "
    ";
                // line 109
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) ? ((("font-family: " . $this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_family", array())) . ";")) : (""));
                echo "
    ";
                // line 110
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_size", array())) ? ((("font-size: " . $this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_size", array())) . ";")) : (""));
                echo "
    ";
                // line 111
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_weight", array())) ? ((("font-weight: " . $this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "font_weight", array())) . ";")) : (""));
                echo "
    ";
                // line 112
                echo (($this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "line_height", array())) ? ((("line-height: " . $this->getAttribute($this->getAttribute((isset($context["body_css"]) ? $context["body_css"] : null), (isset($context["store_id"]) ? $context["store_id"] : null), array(), "array"), "line_height", array())) . ";")) : (""));
                echo "
    }
    ";
            }
            // line 115
            echo "  </style>
";
        }
        // line 117
        echo "</head>
<body class=\"";
        // line 118
        echo (isset($context["class"]) ? $context["class"] : null);
        echo " home1 group1\">
<div class=\"wrapper\">

<header>
\t<div class=\"header-top\">
\t\t<div class=\"container loc\">
\t\t\t<div class=\"container-inner\">
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-6 col-sm-6 col-xs-4\">
\t\t\t\t\t\t<div class=\"phone-email\">
\t\t\t\t\t\t\t<div >
\t\t\t\t\t\t\t\t<a style=\"color:#fff;\" href=\"https://discord.gg/fr6fVmv\"> <i class=\"fab fa-discord\"></i>&nbsp; Discord</a>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-6 col-sm-6 col-xs-8\">
\t\t\t\t\t\t";
        // line 135
        echo (isset($context["currency"]) ? $context["currency"] : null);
        echo "
\t\t\t\t\t\t";
        // line 136
        echo (isset($context["language"]) ? $context["language"] : null);
        echo "
\t\t\t\t\t\t<div id=\"top-links\">
\t\t\t\t\t\t\t<ul class=\"list-inline\">
\t\t\t\t\t\t\t\t<li class=\"dropdown\">
\t\t\t\t\t\t\t\t\t<a href=\"";
        // line 140
        echo (isset($context["account"]) ? $context["account"] : null);
        echo "\" title=\"";
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "\" class=\"dropdown-toggle link-account\" ><span>";
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "</span><i class=\"ion-arrow-down-b\"></i></a>
\t\t\t\t\t\t\t\t\t";
        // line 141
        if ((isset($context["use_ajax_login"]) ? $context["use_ajax_login"] : null)) {
            // line 142
            echo "\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu ul-account\">
\t\t\t\t\t\t\t\t\t";
        } else {
            // line 144
            echo "\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">
\t\t\t\t\t\t\t\t\t";
        }
        // line 146
        echo "\t\t\t\t\t\t\t\t\t\t";
        if ((isset($context["logged"]) ? $context["logged"] : null)) {
            // line 147
            echo "\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
            echo (isset($context["account"]) ? $context["account"] : null);
            echo "\">";
            echo (isset($context["text_account"]) ? $context["text_account"] : null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
            // line 148
            echo (isset($context["order"]) ? $context["order"] : null);
            echo "\">";
            echo (isset($context["text_order"]) ? $context["text_order"] : null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
            // line 149
            echo (isset($context["download"]) ? $context["download"] : null);
            echo "\">";
            echo (isset($context["text_download"]) ? $context["text_download"] : null);
            echo "</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
            // line 150
            echo (isset($context["shopping_cart"]) ? $context["shopping_cart"] : null);
            echo "\" title=\"";
            echo (isset($context["text_shopping_cart"]) ? $context["text_shopping_cart"] : null);
            echo "\"><span>";
            echo (isset($context["text_shopping_cart"]) ? $context["text_shopping_cart"] : null);
            echo "</span></a></li>
\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t";
            // line 152
            if ((isset($context["use_ajax_login"]) ? $context["use_ajax_login"] : null)) {
                // line 153
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a id=\"a-logout-link\" href=\"";
                echo (isset($context["logout"]) ? $context["logout"] : null);
                echo "\">";
                echo (isset($context["text_logout"]) ? $context["text_logout"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 155
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo (isset($context["logout"]) ? $context["logout"] : null);
                echo "\">";
                echo (isset($context["text_logout"]) ? $context["text_logout"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 157
            echo "\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t";
        } else {
            // line 159
            echo "\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t";
            // line 160
            if ((isset($context["use_ajax_login"]) ? $context["use_ajax_login"] : null)) {
                // line 161
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a id=\"a-register-link\" href=\"";
                echo (isset($context["register"]) ? $context["register"] : null);
                echo "\">";
                echo (isset($context["text_register"]) ? $context["text_register"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 163
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo (isset($context["register"]) ? $context["register"] : null);
                echo "\">";
                echo (isset($context["text_register"]) ? $context["text_register"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 165
            echo "\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t";
            // line 167
            if ((isset($context["use_ajax_login"]) ? $context["use_ajax_login"] : null)) {
                // line 168
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a id=\"a-login-link\" href=\"";
                echo (isset($context["login"]) ? $context["login"] : null);
                echo "\">";
                echo (isset($context["text_login"]) ? $context["text_login"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 170
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo (isset($context["login"]) ? $context["login"] : null);
                echo "\">";
                echo (isset($context["text_login"]) ? $context["text_login"] : null);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t";
            }
            // line 172
            echo "\t\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t";
        }
        // line 174
        echo "\t\t\t\t\t\t\t\t\t\t";
        // line 175
        echo "\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>\t
\t\t\t
\t\t\t\t<div class=\"container-fix col-md-12\">
\t\t\t\t\t<div class=\"container\">
\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-2 col-sm-12 col-sms-12\">
\t\t\t\t\t\t<div class=\"logo-container\">
\t\t\t\t\t\t\t<div id=\"logo\">
\t\t\t\t\t\t\t  ";
        // line 190
        if ((isset($context["logo"]) ? $context["logo"] : null)) {
            // line 191
            echo "\t\t\t\t\t\t\t\t<a class=\"animated fadeInLeft\" href=\"";
            echo (isset($context["home"]) ? $context["home"] : null);
            echo "\"><img src=\"";
            echo (isset($context["logo"]) ? $context["logo"] : null);
            echo "\" title=\"";
            echo (isset($context["name"]) ? $context["name"] : null);
            echo "\" alt=\"";
            echo (isset($context["name"]) ? $context["name"] : null);
            echo "\" class=\"img-responsive\" /></a>
\t\t\t\t\t\t\t  ";
        } else {
            // line 193
            echo "\t\t\t\t\t\t\t\t<h1><a href=\"";
            echo (isset($context["home"]) ? $context["home"] : null);
            echo "\">";
            echo (isset($context["name"]) ? $context["name"] : null);
            echo "</a></h1>
\t\t\t\t\t\t\t  ";
        }
        // line 195
        echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-10 col-sm-12 col-sms-12\" style=\"margin-top:15px;\">
\t\t\t\t\t\t<div class=\"main-menu animated fadeInDown\" >
\t\t\t\t\t\t<div class=\"header-cart\">";
        // line 200
        echo (isset($context["cart"]) ? $context["cart"] : null);
        echo "</div>
\t\t\t\t\t\t\t<div class=\"header-wishlist\"><a href=\"";
        // line 201
        echo (isset($context["wishlist"]) ? $context["wishlist"] : null);
        echo "\" id=\"wishlist-total\" title=\"";
        echo (isset($context["text_wishlist"]) ? $context["text_wishlist"] : null);
        echo "\"><span>";
        echo (isset($context["text_wishlist"]) ? $context["text_wishlist"] : null);
        echo "</span></a></div>
\t\t\t\t\t\t
\t\t\t\t\t\t\t";
        // line 203
        if ((isset($context["block1"]) ? $context["block1"] : null)) {
            // line 204
            echo "\t\t\t\t\t\t\t\t";
            echo (isset($context["block1"]) ? $context["block1"] : null);
            echo "
\t\t\t\t\t\t\t";
        }
        // line 206
        echo "\t\t\t\t\t\t\t
\t\t\t\t\t\t\t
\t\t\t\t\t\t
\t\t\t\t\t\t</div>\t
\t\t\t\t\t\t
\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t
\t</div> 
\t
</header>

\t<!--<div class=\"header-bottom col-md-12\" style=\"position: absolute; top: 100vh; z-index: 100; height: 240px; background-color:#fff;\">
\t\t<div class=\"container\">
\t\t\t<div class=\"row\">
\t\t\t\t
\t\t\t<div class=\"col-md-12 col-sm-12 col-sms-12\" style=\"margin-top:30px;\">
\t\t\t\t\t";
        // line 225
        if ((isset($context["block3"]) ? $context["block3"] : null)) {
            // line 226
            echo "\t\t\t\t\t\t";
            echo (isset($context["block3"]) ? $context["block3"] : null);
            echo "
\t\t\t\t\t";
        }
        // line 228
        echo "\t\t\t\t</div>
\t\t\t\t
\t\t\t\t
\t\t\t\t
\t\t\t</div>
\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-1 col-sm-0 col-sms-12\">
\t\t\t\t\t\t";
        // line 235
        if ((isset($context["block2"]) ? $context["block2"] : null)) {
            // line 236
            echo "\t\t\t\t\t\t\t";
            echo (isset($context["block2"]) ? $context["block2"] : null);
            echo "
\t\t\t\t\t\t";
        }
        // line 238
        echo "\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-2 col-sm-2 col-sms-12\">
\t\t\t\t\t\t
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>-->
<div class=\"clearfix\"></div>
<script type=\"text/javascript\">
\$(document).ready(function(){
\t\$(function dropDown()
\t{
\t\telementClick = '#form-currency .btn-currency,#form-language .btn-language,#top-links .link-account,#cart .dropdown-cart';
\t\telementSlide =  '.dropdown-menu';
\t\tactiveClass = 'active';

\t\t\$(elementClick).on('click', function(e){
\t\te.stopPropagation();
\t\tvar subUl = \$(this).next(elementSlide);
\t\tif(subUl.is(':hidden'))
\t\t{
\t\tsubUl.slideDown();
\t\t\$(this).addClass(activeClass);
\t\t}
\t\telse
\t\t{
\t\tsubUl.slideUp();
\t\t\$(this).removeClass(activeClass);
\t\t}
\t\t\$(elementClick).not(this).next(elementSlide).slideUp();
\t\t\$(elementClick).not(this).removeClass(activeClass);
\t\te.preventDefault();
\t\t});

\t\t(function(){
            var mouseover = false;
            var timeout;

            var ecart = \$('#cart');
            var ecbtn = ecart.find('> button');

            ecart
                .on('mouseenter', function() {
                    if (timeout) clearTimeout(timeout);
                    if (!ecbtn.is('.active')) {
                        mouseover = true;
                        ecbtn.trigger('click');
                    }
                })
                .on('mouseleave', function() {
                    timeout = setTimeout(function() {
                        if (ecbtn.is('.active')) {
                            ecbtn.trigger('click');
                            mouseover = false;
                        }
\t\t\t\t\t}, 500)
                });
\t\t})();

\t\t\$(elementSlide).on('click', function(e){
\t\te.stopPropagation();
\t\t});

\t\t\$(document).on('click', function(e){
\t\te.stopPropagation();
\t\tvar elementHide = \$(elementClick).next(elementSlide);
\t\t\$(elementHide).slideUp();
\t\t\$(elementClick).removeClass('active');
\t\t});
\t});
});

\$(document).ready(function() {
if(window.location.href.replace(window.location.origin, \"\") === '/index.php?route=common/home' || window.location.href.replace(window.location.origin, \"\") === '/'){
 \$('.container-fix').css('position', 'absolute');
 \$('.header-top').addClass('mainPageHead');

}else{
 \$('header').css('margin-bottom','30px');
\t\$('.header-top').addClass('mainPageHead');
\t\$('header').addClass('nonmain');
\t\$('.loc').css('background', 'rgba(0, 0, 0, 0.14);');
\t\$('.container-fix').css('position', 'absolute');

\t \$('.header-bottom').css('position', 'relative');
\t \$('.header-bottom').css('top', '0');
\t \$('.header-bottom').css('margin-top', '30px');
\t 
\t 
\t 
\t 
}

    var theLoc = \$('.container-fix').position().top;
    \$(window).scroll(function() {
        if(theLoc >= \$(window).scrollTop() - 6) {
            if(\$('.container-fix').hasClass('fixed')) {
                \$('.container-fix').removeClass('fixed');
\t\t\t
            }
        } else { 
            if(!\$('.container-fix').hasClass('fixed')) {
                \$('.container-fix').addClass('fixed');
\t\t\t\t
            }
        }
    });
\t
});

</script>
<script>
\t\$(document).ready(function() {
\t    var t = \$('.phone-email a').clone().addClass('join-discord');
        var i = t.find('i').clone();
        t.html('').prepend(i).prependTo('#logo');
\t});
</script>";
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/header.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  562 => 238,  556 => 236,  554 => 235,  545 => 228,  539 => 226,  537 => 225,  516 => 206,  510 => 204,  508 => 203,  499 => 201,  495 => 200,  488 => 195,  480 => 193,  468 => 191,  466 => 190,  449 => 175,  447 => 174,  443 => 172,  435 => 170,  427 => 168,  425 => 167,  421 => 165,  413 => 163,  405 => 161,  403 => 160,  400 => 159,  396 => 157,  388 => 155,  380 => 153,  378 => 152,  369 => 150,  363 => 149,  357 => 148,  350 => 147,  347 => 146,  343 => 144,  339 => 142,  337 => 141,  329 => 140,  322 => 136,  318 => 135,  298 => 118,  295 => 117,  291 => 115,  285 => 112,  281 => 111,  277 => 110,  273 => 109,  269 => 108,  266 => 107,  264 => 106,  261 => 105,  256 => 103,  252 => 102,  248 => 101,  244 => 100,  240 => 99,  236 => 98,  231 => 96,  227 => 95,  223 => 94,  220 => 93,  218 => 92,  215 => 91,  210 => 89,  205 => 88,  203 => 87,  197 => 83,  189 => 81,  183 => 79,  181 => 78,  175 => 74,  173 => 73,  165 => 71,  161 => 70,  150 => 68,  146 => 67,  139 => 62,  130 => 60,  126 => 59,  113 => 57,  109 => 56,  71 => 20,  65 => 18,  63 => 17,  57 => 15,  55 => 14,  51 => 13,  47 => 12,  36 => 6,  29 => 4,  23 => 3,  19 => 1,);
    }
}
/* <!DOCTYPE html>*/
/* <!--[if IE]><![endif]-->*/
/* <!--[if IE 8 ]><html dir="{{ direction }}" lang="{{ lang }}" class="ie8"><![endif]-->*/
/* <!--[if IE 9 ]><html dir="{{ direction }}" lang="{{ lang }}" class="ie9"><![endif]-->*/
/* <!--[if (gt IE 9)|!(IE)]><!-->*/
/* <html dir="{{ direction }}" lang="{{ lang }}">*/
/* <!--<![endif]-->*/
/* <head>*/
/* <meta charset="UTF-8" />*/
/* <meta name="viewport" content="width=device-width, initial-scale=1">*/
/* <meta http-equiv="X-UA-Compatible" content="IE=edge">*/
/* <title>{{ title }}</title>*/
/* <base href="{{ base }}" />*/
/* {% if description %}*/
/* <meta name="description" content="{{ description }}" />*/
/* {% endif %}*/
/* {% if keywords %}*/
/* <meta name="keywords" content="{{ keywords }}" />*/
/* {% endif %}*/
/* <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/wow.min.js" type="text/javascript"></script>*/
/* <script>*/
/*     new WOW().init();			*/
/* </script>*/
/* <script src="catalog/view/javascript/jquery/jquery-ui.min.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/ocquickview/css/ocquickview.css" rel="stylesheet" type="text/css" />*/
/* <script src="catalog/view/javascript/jquery/owl-carousel/js/owl.carousel.min.js" type="text/javascript"></script>*/
/* <link href="catalog/view/javascript/jquery/owl-carousel/css/owl.carousel.min.css" rel="stylesheet" />*/
/* <link href="catalog/view/javascript/jquery/owl-carousel/css/owl.theme.green.min.css" rel="stylesheet" />*/
/* <script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevateZoom-3.0.8.min.js" type="text/javascript"></script>*/
/* <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.2/dist/jquery.fancybox.min.css" />*/
/* <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.2/dist/jquery.fancybox.min.js"></script>*/
/* <script src="catalog/view/javascript/opentheme/countdown/jquery.plugin.min.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/countdown/jquery.countdown.min.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/vermegamenu/ver_menu.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/opentheme/vermegamenu/ver_mobile_menu.js" type="text/javascript"></script>*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/countdown/jquery.countdown.css" rel="stylesheet" />*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/vermegamenu/css/ocvermegamenu.css" rel="stylesheet" />*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/css/animate.css" rel="stylesheet" />*/
/* <script src="https://use.fontawesome.com/db54e04b9a.js"></script>*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/layoutproducts/layoutproducts.css" rel="stylesheet" />*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/opentheme/animate.css" rel="stylesheet" />*/
/* <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />*/
/* <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>*/
/* <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">*/
/* <link href="catalog/view/javascript/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css" />*/
/* <link href="catalog/view/javascript/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />*/
/* <link href="//fonts.googleapis.com/css?family=Quicksand:400,500,700" rel="stylesheet" type="text/css" />*/
/* <link href="//fonts.googleapis.com/css?family=Oswald:400,500,600,700" rel="stylesheet" type="text/css" />*/
/* <link href="catalog/view/theme/tt_lazio1/stylesheet/stylesheet.css" rel="stylesheet">*/
/* <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&amp;subset=cyrillic,cyrillic-ext" rel="stylesheet">*/
/* {% for style in styles %}*/
/* <link href="{{ style.href }}" type="text/css" rel="{{ style.rel }}" media="{{ style.media }}" />*/
/* {% endfor %}*/
/* {% for script in scripts %}*/
/* <script src="{{ script }}" type="text/javascript"></script>*/
/* {% endfor %}*/
/* <script src="catalog/view/javascript/common.js" type="text/javascript"></script>*/
/* <script src="catalog/view/javascript/SmoothScroll.js" type="text/javascript"></script>*/
/* */
/* */
/* <script src="catalog/view/javascript/parallax.js"></script>*/
/* {% for link in links %}*/
/* <link href="{{ link.href }}" rel="{{ link.rel }}" />*/
/* {% endfor %}*/
/* {% for analytic in analytics %}*/
/* {{ analytic }}*/
/* {% endfor %}*/
/* {% if theme_option_status[store_id] %}*/
/*   <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.10/webfont.js"></script>*/
/*   <script>*/
/*     WebFont.load({*/
/*       google: {*/
/*         {% if header_tag[store_id].font_family == header_tag[store_id].font_family %}*/
/* 		families: ['{{ header_tag[store_id].font_family ? header_tag[store_id].font_family }}']*/
/* 		{% else %}*/
/* 		families: ['{{ header_tag[store_id].font_family ? header_tag[store_id].font_family }}', '{{ body_css[store_id].font_family ? body_css[store_id].font_family }}']*/
/* 		{% endif %}*/
/*       }*/
/*     });*/
/*   </script>*/
/*   <style>*/
/*     {% if a_tag %}*/
/*     {{ a_tag[store_id].color ? 'a { color: #' ~ a_tag[store_id].color ~ '; }' : '' }}*/
/*     {{ a_tag[store_id].hover_color ? 'a:hover { color: #' ~ a_tag[store_id].hover_color ~ '; }' : '' }}*/
/*     {% endif %}*/
/* */
/*     {% if header_tag %}*/
/*     h1, h2, h3, h4, h5, h6 {*/
/*     {{ header_tag[store_id].color ? 'color: #' ~ header_tag[store_id].color ~ ';' : '' }}*/
/*     {{ header_tag[store_id].font_family ? 'font-family: ' ~ header_tag[store_id].font_family ~ ';' : '' }}*/
/*     {{ header_tag[store_id].font_weight ? 'font-weight: ' ~ header_tag[store_id].font_weight ~ ';' : ''}}*/
/*     }*/
/*     {{ header_tag[store_id].h1.font_size ? 'h1 { font-size: ' ~ header_tag[store_id].h1.font_size ~ '; }' : '' }}*/
/*     {{ header_tag[store_id].h2.font_size ? 'h2 { font-size: ' ~ header_tag[store_id].h2.font_size ~ '; }' : '' }}*/
/*     {{ header_tag[store_id].h3.font_size ? 'h3 { font-size: ' ~ header_tag[store_id].h3.font_size ~ '; }' : '' }}*/
/*     {{ header_tag[store_id].h4.font_size ? 'h4 { font-size: ' ~ header_tag[store_id].h4.font_size ~ '; }' : '' }}*/
/*     {{ header_tag[store_id].h5.font_size ? 'h5 { font-size: ' ~ header_tag[store_id].h5.font_size ~ '; }' : '' }}*/
/*     {{ header_tag[store_id].h6.font_size ? 'h6 { font-size: ' ~ header_tag[store_id].h6.font_size ~ '; }' : '' }}*/
/*     {% endif %}*/
/* */
/*     {% if body_css %}*/
/*     body {*/
/*     {{ body_css[store_id].color ? 'color: #' ~ body_css[store_id].color ~ ';' : '' }}*/
/*     {{ body_css[store_id].font_family ? 'font-family: ' ~ body_css[store_id].font_family ~ ';' : '' }}*/
/*     {{ body_css[store_id].font_size ? 'font-size: ' ~ body_css[store_id].font_size ~ ';' : '' }}*/
/*     {{ body_css[store_id].font_weight ? 'font-weight: ' ~ body_css[store_id].font_weight ~ ';' : '' }}*/
/*     {{ body_css[store_id].line_height ? 'line-height: ' ~ body_css[store_id].line_height ~ ';' : '' }}*/
/*     }*/
/*     {% endif %}*/
/*   </style>*/
/* {% endif %}*/
/* </head>*/
/* <body class="{{ class }} home1 group1">*/
/* <div class="wrapper">*/
/* */
/* <header>*/
/* 	<div class="header-top">*/
/* 		<div class="container loc">*/
/* 			<div class="container-inner">*/
/* 				<div class="row">*/
/* 					<div class="col-md-6 col-sm-6 col-xs-4">*/
/* 						<div class="phone-email">*/
/* 							<div >*/
/* 								<a style="color:#fff;" href="https://discord.gg/fr6fVmv"> <i class="fab fa-discord"></i>&nbsp; Discord</a>*/
/* 							</div>*/
/* 							*/
/* 						</div>*/
/* 					</div>*/
/* 					<div class="col-md-6 col-sm-6 col-xs-8">*/
/* 						{{ currency }}*/
/* 						{{ language }}*/
/* 						<div id="top-links">*/
/* 							<ul class="list-inline">*/
/* 								<li class="dropdown">*/
/* 									<a href="{{ account }}" title="{{ text_account }}" class="dropdown-toggle link-account" ><span>{{ text_account }}</span><i class="ion-arrow-down-b"></i></a>*/
/* 									{% if use_ajax_login %}*/
/* 										<ul class="dropdown-menu ul-account">*/
/* 									{% else %}*/
/* 										<ul class="dropdown-menu">*/
/* 									{% endif %}*/
/* 										{% if logged %}*/
/* 										<li><a href="{{ account }}">{{ text_account }}</a></li>*/
/* 										<li><a href="{{ order }}">{{ text_order }}</a></li>*/
/* 										<li><a href="{{ download }}">{{ text_download }}</a></li>*/
/* 										<li><a href="{{ shopping_cart }}" title="{{ text_shopping_cart }}"><span>{{ text_shopping_cart }}</span></a></li>*/
/* 										<li>*/
/* 											{% if use_ajax_login %}*/
/* 												<a id="a-logout-link" href="{{ logout }}">{{ text_logout }}</a>*/
/* 											{% else %}*/
/* 												<a href="{{ logout }}">{{ text_logout }}</a>*/
/* 											{% endif %}*/
/* 										</li>*/
/* 										{% else %}*/
/* 										<li>*/
/* 											{% if use_ajax_login %}*/
/* 												<a id="a-register-link" href="{{ register }}">{{ text_register }}</a>*/
/* 											{% else %}*/
/* 												<a href="{{ register }}">{{ text_register }}</a>*/
/* 											{% endif %}*/
/* 										</li>*/
/* 										<li>*/
/* 											{% if use_ajax_login %}*/
/* 												<a id="a-login-link" href="{{ login }}">{{ text_login }}</a>*/
/* 											{% else %}*/
/* 												<a href="{{ login }}">{{ text_login }}</a>*/
/* 											{% endif %}*/
/* 										</li>*/
/* 										{% endif %}*/
/* 										{#<li><a href="{{ checkout }}" title="{{ text_checkout }}"><span>{{ text_checkout }}</span></a></li>#}*/
/* 									</ul>*/
/* 								</li>*/
/* 							</ul>*/
/* 						</div>*/
/* 					</div>*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>	*/
/* 			*/
/* 				<div class="container-fix col-md-12">*/
/* 					<div class="container">*/
/* 						<div class="row">*/
/* 					<div class="col-md-2 col-sm-12 col-sms-12">*/
/* 						<div class="logo-container">*/
/* 							<div id="logo">*/
/* 							  {% if logo %}*/
/* 								<a class="animated fadeInLeft" href="{{ home }}"><img src="{{ logo }}" title="{{ name }}" alt="{{ name }}" class="img-responsive" /></a>*/
/* 							  {% else %}*/
/* 								<h1><a href="{{ home }}">{{ name }}</a></h1>*/
/* 							  {% endif %}*/
/* 							</div>*/
/* 						</div>*/
/* 					</div>*/
/* 					<div class="col-md-10 col-sm-12 col-sms-12" style="margin-top:15px;">*/
/* 						<div class="main-menu animated fadeInDown" >*/
/* 						<div class="header-cart">{{ cart }}</div>*/
/* 							<div class="header-wishlist"><a href="{{ wishlist }}" id="wishlist-total" title="{{ text_wishlist }}"><span>{{ text_wishlist }}</span></a></div>*/
/* 						*/
/* 							{% if block1 %}*/
/* 								{{ block1 }}*/
/* 							{% endif %}*/
/* 							*/
/* 							*/
/* 						*/
/* 						</div>	*/
/* 						*/
/* 					</div>*/
/* 						</div>*/
/* 					</div>*/
/* 				</div>*/
/* 			*/
/* 	</div> */
/* 	*/
/* </header>*/
/* */
/* 	<!--<div class="header-bottom col-md-12" style="position: absolute; top: 100vh; z-index: 100; height: 240px; background-color:#fff;">*/
/* 		<div class="container">*/
/* 			<div class="row">*/
/* 				*/
/* 			<div class="col-md-12 col-sm-12 col-sms-12" style="margin-top:30px;">*/
/* 					{% if block3 %}*/
/* 						{{ block3 }}*/
/* 					{% endif %}*/
/* 				</div>*/
/* 				*/
/* 				*/
/* 				*/
/* 			</div>*/
/* 			<div class="row">*/
/* 					<div class="col-md-1 col-sm-0 col-sms-12">*/
/* 						{% if block2 %}*/
/* 							{{ block2 }}*/
/* 						{% endif %}*/
/* 					</div>*/
/* 					<div class="col-md-2 col-sm-2 col-sms-12">*/
/* 						*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>*/
/* 	</div>-->*/
/* <div class="clearfix"></div>*/
/* <script type="text/javascript">*/
/* $(document).ready(function(){*/
/* 	$(function dropDown()*/
/* 	{*/
/* 		elementClick = '#form-currency .btn-currency,#form-language .btn-language,#top-links .link-account,#cart .dropdown-cart';*/
/* 		elementSlide =  '.dropdown-menu';*/
/* 		activeClass = 'active';*/
/* */
/* 		$(elementClick).on('click', function(e){*/
/* 		e.stopPropagation();*/
/* 		var subUl = $(this).next(elementSlide);*/
/* 		if(subUl.is(':hidden'))*/
/* 		{*/
/* 		subUl.slideDown();*/
/* 		$(this).addClass(activeClass);*/
/* 		}*/
/* 		else*/
/* 		{*/
/* 		subUl.slideUp();*/
/* 		$(this).removeClass(activeClass);*/
/* 		}*/
/* 		$(elementClick).not(this).next(elementSlide).slideUp();*/
/* 		$(elementClick).not(this).removeClass(activeClass);*/
/* 		e.preventDefault();*/
/* 		});*/
/* */
/* 		(function(){*/
/*             var mouseover = false;*/
/*             var timeout;*/
/* */
/*             var ecart = $('#cart');*/
/*             var ecbtn = ecart.find('> button');*/
/* */
/*             ecart*/
/*                 .on('mouseenter', function() {*/
/*                     if (timeout) clearTimeout(timeout);*/
/*                     if (!ecbtn.is('.active')) {*/
/*                         mouseover = true;*/
/*                         ecbtn.trigger('click');*/
/*                     }*/
/*                 })*/
/*                 .on('mouseleave', function() {*/
/*                     timeout = setTimeout(function() {*/
/*                         if (ecbtn.is('.active')) {*/
/*                             ecbtn.trigger('click');*/
/*                             mouseover = false;*/
/*                         }*/
/* 					}, 500)*/
/*                 });*/
/* 		})();*/
/* */
/* 		$(elementSlide).on('click', function(e){*/
/* 		e.stopPropagation();*/
/* 		});*/
/* */
/* 		$(document).on('click', function(e){*/
/* 		e.stopPropagation();*/
/* 		var elementHide = $(elementClick).next(elementSlide);*/
/* 		$(elementHide).slideUp();*/
/* 		$(elementClick).removeClass('active');*/
/* 		});*/
/* 	});*/
/* });*/
/* */
/* $(document).ready(function() {*/
/* if(window.location.href.replace(window.location.origin, "") === '/index.php?route=common/home' || window.location.href.replace(window.location.origin, "") === '/'){*/
/*  $('.container-fix').css('position', 'absolute');*/
/*  $('.header-top').addClass('mainPageHead');*/
/* */
/* }else{*/
/*  $('header').css('margin-bottom','30px');*/
/* 	$('.header-top').addClass('mainPageHead');*/
/* 	$('header').addClass('nonmain');*/
/* 	$('.loc').css('background', 'rgba(0, 0, 0, 0.14);');*/
/* 	$('.container-fix').css('position', 'absolute');*/
/* */
/* 	 $('.header-bottom').css('position', 'relative');*/
/* 	 $('.header-bottom').css('top', '0');*/
/* 	 $('.header-bottom').css('margin-top', '30px');*/
/* 	 */
/* 	 */
/* 	 */
/* 	 */
/* }*/
/* */
/*     var theLoc = $('.container-fix').position().top;*/
/*     $(window).scroll(function() {*/
/*         if(theLoc >= $(window).scrollTop() - 6) {*/
/*             if($('.container-fix').hasClass('fixed')) {*/
/*                 $('.container-fix').removeClass('fixed');*/
/* 			*/
/*             }*/
/*         } else { */
/*             if(!$('.container-fix').hasClass('fixed')) {*/
/*                 $('.container-fix').addClass('fixed');*/
/* 				*/
/*             }*/
/*         }*/
/*     });*/
/* 	*/
/* });*/
/* */
/* </script>*/
/* <script>*/
/* 	$(document).ready(function() {*/
/* 	    var t = $('.phone-email a').clone().addClass('join-discord');*/
/*         var i = t.find('i').clone();*/
/*         t.html('').prepend(i).prependTo('#logo');*/
/* 	});*/
/* </script>*/
