<?php

/* tt_lazio1/template/extension/module/ocproduct.twig */
class __TwigTemplate_d49a9e85b641ae67c1e2dbf9eeebfe115e18cfb05b992b1d36c0e0c184c6fba9 extends Twig_Template
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
        echo "<div class=\"tt_product_module ";
        echo $this->getAttribute((isset($context["config_module"]) ? $context["config_module"] : null), "class", array());
        echo "\" id=\"product_module";
        echo $this->getAttribute((isset($context["config_module"]) ? $context["config_module"] : null), "module_id", array());
        echo "\">
    <div class=\"module-title\">
\t  <h2>
\t\t";
        // line 4
        if ($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["config_module"]) ? $context["config_module"] : null), "title_lang", array()), (isset($context["code"]) ? $context["code"] : null), array(), "array"), "title", array())) {
            // line 5
            echo "\t\t  ";
            echo $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["config_module"]) ? $context["config_module"] : null), "title_lang", array()), (isset($context["code"]) ? $context["code"] : null), array(), "array"), "title", array());
            echo "
\t\t";
        } else {
            // line 7
            echo "\t\t  ";
            echo (isset($context["heading_title"]) ? $context["heading_title"] : null);
            echo "
\t\t";
        }
        // line 9
        echo "\t  </h2>";
        // line 15
        echo "\t</div>
\t";
        // line 21
        echo "\t";
        // line 38
        echo "    <div class=\"tt-product-custom  ";
        echo "\">
        ";
        // line 39
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["products"]) ? $context["products"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 40
            echo "            ";
            // line 312
            echo "\t\t\t<div class=\"product-layout\">
\t\t\t\t<div class=\"product-thumb\">
\t\t\t\t\t<a href=\"";
            // line 314
            echo $this->getAttribute($context["product"], "href", array());
            echo "\">
\t\t\t\t\t\t<img src=\"";
            // line 315
            echo $this->getAttribute($context["product"], "thumb", array());
            echo "\">
\t\t\t\t\t\t<div class=\"tt-custom-caption\">
\t\t\t\t\t\t\t<h4 class=\"product-name\">";
            // line 317
            echo $this->getAttribute($context["product"], "name", array());
            echo "</h4>
\t\t\t\t\t\t</div>
\t\t\t\t\t</a>
\t\t\t\t</div>
\t\t\t</div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 323
        echo "    </div>
    ";
        // line 324
        if (((isset($context["products_new_current"]) ? $context["products_new_current"] : null) && ((isset($context["products_new_current"]) ? $context["products_new_current"] : null) < (isset($context["products_new_total"]) ? $context["products_new_total"] : null)))) {
            // line 325
            echo "\t\t<div class=\"product-load-more\">
\t\t\t<button id=\"button-newproduct-load-more\" class=\"btn-ripple animated fadeInDown\"><span>";
            // line 326
            echo (isset($context["text_load_more"]) ? $context["text_load_more"] : null);
            echo "</span><i class=\"material-icons fas fa-arrow-circle-down\"></i></button>
\t\t</div>
    ";
        }
        // line 329
        echo "\t";
        // line 332
        echo "</div>
";
        // line 403
        echo "<script>
\t\$('#product_module";
        // line 404
        echo $this->getAttribute((isset($context["config_module"]) ? $context["config_module"] : null), "module_id", array());
        echo "').parents('.container')
\t\t.removeClass('container').addClass('container-fluid');
</script>
<script>
\t\$(function() {
        var \$btn = \$('#button-newproduct-load-more');
        var \$container = \$('.tt-product-custom');
        function getEntry(href, thumb, name) {
            return '<div class=\"product-layout\"><div class=\"product-thumb\"><a href=\"' + href + '\"><img src=\"' + thumb + '\"><div class=\"tt-custom-caption\"><h4 class=\"product-name\">' + name + '</h4></div></a></div></div>'
\t\t}
        var currentOffset = parseInt(";
        // line 414
        echo (isset($context["products_new_current"]) ? $context["products_new_current"] : null);
        echo ");
        var totalItems = ";
        // line 415
        echo (isset($context["products_new_total"]) ? $context["products_new_total"] : null);
        echo "
        \$btn.click(function() {
            \$btn.button('loading');
            \$.ajax({
\t\t\t\turl: \"";
        // line 419
        echo (isset($context["products_new_load_link"]) ? $context["products_new_load_link"] : null);
        echo "\",
\t\t\t\tmethod: \"GET\",
\t\t\t\tdata: {
\t\t\t\t    cate_id: \"";
        // line 422
        echo $this->getAttribute((isset($context["products_new_settings"]) ? $context["products_new_settings"] : null), "cate_id", array());
        echo "\",
\t\t\t\t\tlimit: \"";
        // line 423
        echo $this->getAttribute((isset($context["products_new_settings"]) ? $context["products_new_settings"] : null), "limit", array());
        echo "\",
\t\t\t\t\twidth: \"";
        // line 424
        echo $this->getAttribute((isset($context["products_new_settings"]) ? $context["products_new_settings"] : null), "width", array());
        echo "\",
\t\t\t\t\theight: \"";
        // line 425
        echo $this->getAttribute((isset($context["products_new_settings"]) ? $context["products_new_settings"] : null), "height", array());
        echo "\",
                    offset: currentOffset
\t\t\t\t},
\t\t\t\tsuccess: function(response) {
\t\t\t\t    if (!response.error) {
\t\t\t\t        if (response.products.length) {
                            for (var i = 0; i < response.products.length; i++) {
                                var item = response.products[i];
                                \$container.append(getEntry(item.href, item.thumb, item.name));
\t\t\t\t\t\t\t}
\t\t\t\t\t\t}
\t\t\t\t        currentOffset += response.products.length;
\t\t\t\t        if (currentOffset >= totalItems) {
\t\t\t\t            \$('.product-load-more').hide();
\t\t\t\t\t\t}
\t\t\t\t\t}
\t\t\t\t},
\t\t\t\tcomplete: function() {
                    \$btn.button('reset');
\t\t\t\t}
\t\t\t});
        });
\t});
</script>";
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/extension/module/ocproduct.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  148 => 425,  144 => 424,  140 => 423,  136 => 422,  130 => 419,  123 => 415,  119 => 414,  106 => 404,  103 => 403,  100 => 332,  98 => 329,  92 => 326,  89 => 325,  87 => 324,  84 => 323,  72 => 317,  67 => 315,  63 => 314,  59 => 312,  57 => 40,  53 => 39,  49 => 38,  47 => 21,  44 => 15,  42 => 9,  36 => 7,  30 => 5,  28 => 4,  19 => 1,);
    }
}
/* <div class="tt_product_module {{ config_module.class }}" id="product_module{{ config_module.module_id }}">*/
/*     <div class="module-title">*/
/* 	  <h2>*/
/* 		{% if config_module.title_lang[code].title %}*/
/* 		  {{ config_module.title_lang[code].title }}*/
/* 		{% else %}*/
/* 		  {{ heading_title }}*/
/* 		{% endif %}*/
/* 	  </h2>{#*/
/* 	  {% if module_description %}*/
/* 		<div class="module-description">*/
/* 		  {{ module_description }}*/
/* 		</div>*/
/* 	  {% endif %}#}*/
/* 	</div>*/
/* 	{#{% if config_module.slider %}*/
/* 		{% set class_slider = ' owl-carousel owl-theme '%}*/
/* 	{% else %}*/
/* 		{% set class_slider = ''%}*/
/* 	{% endif %}#}*/
/* 	{#*/
/* 	{% if config_module.nrow == 0 %}*/
/* 		{% set class = 'two_items col-lg-6 col-md-6 col-sm-6 col-xs-12' %}*/
/* 	{% elseif config_module.nrow == 1 %}*/
/* 		{% set class = 'three_items col-lg-4 col-md-4 col-sm-4 col-xs-12' %}*/
/* 	{% elseif config_module.nrow == 2 %}*/
/* 		{% set class = 'four_items col-lg-3 col-md-3 col-sm-3 col-xs-12' %}*/
/* 	{% else %}*/
/* 		{% set class = 'six_items col-lg-2 col-md-2 col-sm-2 col-xs-12' %}*/
/* 	{% endif %}*/
/* 	{% if products|length > 0 %}*/
/* 		{% if config_module.row %}*/
/* 			{% set rows = config_module.row %}*/
/* 		{% else %}*/
/* 			{% set rows = 1 %}*/
/* 		{% endif %}*/
/* 		{% set count = 0 %}#}*/
/*     <div class="tt-product-custom  {#{{ class_slider }}#}">*/
/*         {% for product in products %}*/
/*             {#<!-- Grid -->*/
/* 			{% if count % rows == 0 %}*/
/* 			<div class="row_items {% if not config_module.slider %}{{ class }}{% endif %}">*/
/* 			{% endif %}*/
/* 			{% set count = count + 1 %}*/
/*             {% if config_module.type == 0 %}*/
/* 				<div class="product-layout product-grid" >*/
/* 					<div class="product-thumb transition" >*/
/* 						<div onclick="window.location.href = '{{ product.href }}';" class="item-inner inner-hover" >*/
/* 							<div class="hoverPlace product_inner" style="position:absolute; top:0; left:0; width:100%; height: 269px;">*/
/* 								<div class="owl-carousel2 owl-theme ">*/
/* 									<div class="item"><div class="owl-image" style="background: url('{{ product.thumb }}');height: 269px; width:100%; background-size: cover; background-position: center center;"></div> </div>*/
/* 									{% for image in images %}*/
/* 										{% if product.product_id == image.product_id %}*/
/* 											<div class="item"><div class="owl-image" style="background: url('{{ image.thumb }}'); height: 269px; width:100%; background-size: cover; background-position: center center;"></div></div>*/
/* 										{% endif %}*/
/* 									{% endfor %}*/
/* 								</div>*/
/* 							</div>*/
/* 							<div class="image" >*/
/* 								{% if config_module.salelabel %}*/
/* 									{% if product.special %}*/
/* 									<div class="label-product label_sale"><span>{{ text_label_sale }}</span></div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 								{% if config_module.newlabel %}*/
/* 									{% if product.is_new %}*/
/* 									<div class="label-product label_new">{{ text_label_new }}</div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 							</div><!-- image -->*/
/* 							<div class="caption">*/
/* 								{% if product.manufacturer %}*/
/* 								<p class="manufacture-product">*/
/* 									<a href="{{ product.manufacturers }}">{{ product.manufacturer }}</a>*/
/* 								</p>*/
/* 								{% endif %}*/
/* 								<h4 class="product-name"><a href="{{ product.href }}">{{ product.name }}</a></h4>*/
/* 								{% if config_module.description %}*/
/* 								<p class="product-des">{{ product.description }}</p>*/
/* 								{% endif %}*/
/* 								{% if product.rating %}*/
/* 								<div class="ratings">*/
/* 									<div class="rating-box">*/
/* 									{% for i in 0..5 %}*/
/* 										{% if product.rating == i %}*/
/* 										{% set class_r = "rating"~i %}*/
/* 										<div class="{{ class_r }}">rating</div>*/
/* 										{% endif %}*/
/* 									{% endfor %}*/
/* 									</div>*/
/* 								</div>*/
/* 								{% endif %}*/
/* 								{% if use_catalog %}*/
/* 								#}{#{% if product.price %}*/
/* 									<p class="price">*/
/* 									{% if not product.special %}*/
/* 										{{ product.price }}*/
/* 									{% else %}*/
/* 										<span class="price-old">{{ product.price }}</span><span class="price-new">{{ product.special }}</span>*/
/* 									{% endif %}*/
/* 									{% if product.tax %}*/
/* 										<span class="price-tax">{{ text_tax }} {{ product.tax }}</span>*/
/* 									{% endif %}*/
/* 									</p>*/
/* 								{% endif %}#}{#*/
/* 								{% endif %}*/
/* 								<div class="action-links">*/
/* 									<!--{% if use_catalog %}*/
/* 									<button class="btn-cart" type="button" title="{{ button_cart }}" onclick="cart.add('{{ product.product_id }}');"><i class="ion-bag"></i><span>{{ button_cart }}</span></button>*/
/* 									<button class="btn-cart" type="button" onclick="window.location.href = '{{ product.href }}';" title="{{ button_watch }}"><i class="ion-eye"></i><span>{{ button_watch }}</span></button>*/
/* */
/* 									{% endif %}*/
/* 									<button class="btn-wishlist" type="button" data-toggle="tooltip" title="{{ button_wishlist }}" onclick="wishlist.add('{{ product.product_id }}');"><i class="zmdi zmdi-favorite-outline zmdi-hc-fw"></i><span>{{ button_wishlist }}</span></button>*/
/* 									<button class="btn-compare" type="button" data-toggle="tooltip" title="{{ button_compare }}" onclick="compare.add('{{ product.product_id }}');"><i class="zmdi zmdi-refresh-alt"></i><span>{{ button_compare }}</span></button>*/
/* 									{% if use_quickview %}*/
/* 									<button class="btn-quickview" type="button" data-toggle="tooltip" title="{{ button_quickview }}" onclick="ocquickview.ajaxView('{{ product.href }}')"><i class="zmdi zmdi-search zmdi-hc-fw"></i><span>{{ button_quickview }}</span></button>*/
/* 									{% endif %}-->*/
/* */
/* 								</div>*/
/* 								<div class="more"><i class="ion-eye"></i></div>*/
/* */
/* 							</div><!-- caption -->*/
/* 							{% if config_module.countdown %}<div id="Countdown{{ product.product_id }}-{{ i }}" class="box-timer"></div> {% endif %}*/
/* 						</div>*/
/* 					</div><!-- product-thumb -->*/
/* 						{% if product.date_end and config_module.countdown %}*/
/* 						<script type="text/javascript"><!--*/
/* 						$(document).ready(function () {*/
/* 						$('#Countdown{{ product.product_id }}-{{ i }}').countdown({*/
/* 						until: new Date({{ product.date_end|date("Y") }}, {{ product.date_end|date("m") }}-1, {{ product.date_end|date("d") }}, {{ product.date_end|date("H") }}, {{ product.date_end|date("i") }}, {{ product.date_end|date("s") }}),*/
/* 						labels: ['{{ text_years }}', '{{ text_months }} ', '{{ text_weeks }}', '{{ text_days }}', '{{ text_hrs }}', '{{ text_mins }}', '{{ text_secs }}'],*/
/* 						labels1: ['{{ text_year }}', '{{ text_month }} ', '{{ text_week }}', '{{ text_day }}', '{{ text_hr }}', '{{ text_min }}', '{{ text_sec }}'],*/
/* 						});*/
/* 						// $('#Countdown{{ product.product_id }}-{{ i }}').countdown('pause');*/
/* 						});*/
/* 						--></script>*/
/* 						{% endif %}*/
/* 				</div><!-- product-layout -->*/
/* */
/*             {% elseif config_module.type == 1 %}*/
/*             <!-- List -->*/
/*             <div class="product-layout list-style">*/
/* 					<div class="product-thumb transition">*/
/* 						<div class="item-inner">*/
/* 							<div class="image">*/
/* 								{% if config_module.salelabel %}*/
/* 									{% if product.special %}*/
/* 									<div class="label-product label_sale">{{ text_label_sale }}</div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 								{% if config_module.newlabel %}*/
/* 									{% if product.is_new %}*/
/* 									<div class="label-product label_new">{{ text_label_new }}</div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 								<a href="{{ product.href }}">*/
/* 									{% if config_module.rotator and product.rotator_image %}<img class="img-r" src="{{ product.rotator_image }}" alt="{{ product.name }}" />{% endif %}*/
/* 									<img src="{{ product.thumb }}" alt="{{ product.name }}" title="{{ product.name }}" class="img-responsive" />*/
/* 								</a>*/
/* 								<div class="action-links">*/
/* 									{% if use_catalog %}*/
/* 									<button class="btn-cart" type="button" data-toggle="tooltip" title="{{ button_cart }}" onclick="cart.add('{{ product.product_id }}');"><i class="zmdi zmdi-shopping-cart-plus"></i><span>{{ button_cart }}</span></button>*/
/* 									{% endif %}*/
/* 									<button class="btn-wishlist" type="button" data-toggle="tooltip" title="{{ button_wishlist }}" onclick="wishlist.add('{{ product.product_id }}');"><i class="zmdi zmdi-favorite-outline zmdi-hc-fw"></i><span>{{ button_wishlist }}</span></button>*/
/* 									<!--<button class="btn-compare" type="button" data-toggle="tooltip" title="{{ button_compare }}" onclick="compare.add('{{ product.product_id }}');"><i class="zmdi zmdi-refresh-alt"></i><span>{{ button_compare }}</span></button>-->*/
/* 									{% if use_quickview %}*/
/* 									<button class="btn-quickview" type="button" data-toggle="tooltip" title="{{ button_quickview }}" onclick="ocquickview.ajaxView('{{ product.href }}')"><i class="zmdi zmdi-search zmdi-hc-fw"></i><span>{{ button_quickview }}</span></button>*/
/* 									{% endif %}*/
/* 								</div>*/
/* 								{% if product.rating %}*/
/* 									<div class="ratings">*/
/* 										<div class="rating-box">*/
/* 										{% for i in 1..5 %}*/
/* 											{% if product.rating == i %}*/
/* 											{% set class_r = "rating"~i %}*/
/* 											<div class="{{ class_r }}">rating</div>*/
/* 											{% endif %}*/
/* 										{% endfor %}*/
/* 										</div>*/
/* 									</div>*/
/* 								{% endif %}*/
/* 							</div><!-- image -->*/
/* 							<div class="caption">*/
/* 								{% if product.manufacturer %}*/
/* 								<p class="manufacture-product">*/
/* 									<a href="{{ product.manufacturers }}">{{ product.manufacturer }}</a>*/
/* 								</p>*/
/* 								{% endif %}*/
/* 								<h4 class="product-name"><a href="{{ product.href }}">{{ product.name }}</a></h4>*/
/* 								{% if config_module.description %}*/
/* 								<p class="product-des">{{ product.description }}</p>*/
/* 								{% endif %}*/
/* 								{% if use_catalog %}*/
/* 								#}{#{% if product.price %}*/
/* 									<p class="price">*/
/* 									{% if not product.special %}*/
/* 										{{ product.price }}*/
/* 									{% else %}*/
/* 										<span class="price-old">{{ product.price }}</span><span class="price-new">{{ product.special }}</span>*/
/* 									{% endif %}*/
/* 									{% if product.tax %}*/
/* 										<span class="price-tax">{{ text_tax }} {{ product.tax }}</span>*/
/* 									{% endif %}*/
/* 									</p>*/
/* 								{% endif %}#}{#*/
/* 								{% endif %}*/
/* 							</div><!-- caption -->*/
/* 							{% if config_module.countdown %}<div id="Countdown{{ product.product_id }}-{{ i }}" class="box-timer"></div> {% endif %}*/
/* 						</div>*/
/* 					</div><!-- product-thumb -->*/
/* 						{% if product.date_end and config_module.countdown %}*/
/* 						<script type="text/javascript"><!--*/
/* 						$(document).ready(function () {*/
/* 						$('#Countdown{{ product.product_id }}-{{ i }}').countdown({*/
/* 						until: new Date({{ product.date_end|date("Y") }}, {{ product.date_end|date("m") }}-1, {{ product.date_end|date("d") }}, {{ product.date_end|date("H") }}, {{ product.date_end|date("i") }}, {{ product.date_end|date("s") }}),*/
/* 						labels: ['{{ text_years }}', '{{ text_months }} ', '{{ text_weeks }}', '{{ text_days }}', '{{ text_hrs }}', '{{ text_mins }}', '{{ text_secs }}'],*/
/* 						labels1: ['{{ text_year }}', '{{ text_month }} ', '{{ text_week }}', '{{ text_day }}', '{{ text_hr }}', '{{ text_min }}', '{{ text_sec }}'],*/
/* 						});*/
/* 						// $('#Countdown{{ product.product_id }}-{{ i }}').countdown('pause');*/
/* 						});*/
/* 						--></script>*/
/* 						{% endif %}*/
/* 				</div><!-- product-layout -->*/
/*             {% else %}*/
/*             <!-- other type -->*/
/*             <div class="product-layout product-customize">*/
/* 					<div class="product-thumb transition">*/
/* 						<div class="item-inner">*/
/* 							<div class="image">*/
/* 								{% if config_module.salelabel %}*/
/* 									{% if product.special %}*/
/* 									<div class="label-product label_sale">{{ text_label_sale }}</div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 								{% if config_module.newlabel %}*/
/* 									{% if product.is_new %}*/
/* 									<div class="label-product label_new">{{ text_label_new }}</div>*/
/* 									{% endif %}*/
/* 								{% endif %}*/
/* 								<a href="{{ product.href }}">*/
/* 									{% if config_module.rotator and product.rotator_image %}<img class="img-r" src="{{ product.rotator_image }}" alt="{{ product.name }}" />{% endif %}*/
/* 									<img src="{{ product.thumb }}" alt="{{ product.name }}" title="{{ product.name }}" class="img-responsive" />*/
/* 								</a>*/
/* 								<div class="action-links">*/
/* 									{% if use_catalog %}*/
/* 									<button class="btn-cart" type="button" data-toggle="tooltip" title="{{ button_cart }}" onclick="cart.add('{{ product.product_id }}');"><i class="zmdi zmdi-shopping-cart-plus"></i><span>{{ button_cart }}</span></button>*/
/* 									{% endif %}*/
/* 									<button class="btn-wishlist" type="button" data-toggle="tooltip" title="{{ button_wishlist }}" onclick="wishlist.add('{{ product.product_id }}');"><i class="zmdi zmdi-favorite-outline zmdi-hc-fw"></i><span>{{ button_wishlist }}</span></button>*/
/* 									<!--<button class="btn-compare" type="button" data-toggle="tooltip" title="{{ button_compare }}" onclick="compare.add('{{ product.product_id }}');"><i class="zmdi zmdi-refresh-alt"></i><span>{{ button_compare }}</span></button>-->*/
/* 									{% if use_quickview %}*/
/* 									<button class="btn-quickview" type="button" data-toggle="tooltip" title="{{ button_quickview }}" onclick="ocquickview.ajaxView('{{ product.href }}')"><i class="zmdi zmdi-search zmdi-hc-fw"></i><span>{{ button_quickview }}</span></button>*/
/* 									{% endif %}*/
/* 								</div>*/
/* 								{% if product.rating %}*/
/* 								<div class="ratings">*/
/* 									<div class="rating-box">*/
/* 									{% for i in 1..5 %}*/
/* 										{% if product.rating == i %}*/
/* 										{% set class_r = "rating"~i %}*/
/* 										<div class="{{ class_r }}">rating</div>*/
/* 										{% endif %}*/
/* 									{% endfor %}*/
/* 									</div>*/
/* 								</div>*/
/* 								{% endif %}*/
/* 							</div><!-- image -->*/
/* 							<div class="caption">*/
/* 								{% if product.manufacturer %}*/
/* 								<p class="manufacture-product">*/
/* 									<a href="{{ product.manufacturers }}">{{ product.manufacturer }}</a>*/
/* 								</p>*/
/* 								{% endif %}*/
/* 								<h4 class="product-name"><a href="{{ product.href }}">{{ product.name }}</a></h4>*/
/* 								{% if config_module.description %}*/
/* 								<p class="product-des">{{ product.description }}</p>*/
/* 								{% endif %}*/
/* 								{% if use_catalog %}*/
/* 								#}{#{% if product.price %}*/
/* 									<p class="price">*/
/* 									{% if not product.special %}*/
/* 										{{ product.price }}*/
/* 									{% else %}*/
/* 										<span class="price-old">{{ product.price }}</span><span class="price-new">{{ product.special }}</span>*/
/* 									{% endif %}*/
/* 									{% if product.tax %}*/
/* 										<span class="price-tax">{{ text_tax }} {{ product.tax }}</span>*/
/* 									{% endif %}*/
/* 									</p>*/
/* 								{% endif %}#}{#*/
/* 								{% endif %}*/
/* 							</div><!-- caption -->*/
/* 							{% if config_module.countdown %}<div id="Countdown{{ product.product_id }}-{{ i }}" class="box-timer"></div> {% endif %}*/
/* 						</div>*/
/* 					</div><!-- product-thumb -->*/
/* 						{% if product.date_end and config_module.countdown %}*/
/* 						<script type="text/javascript"><!--*/
/* 						$(document).ready(function () {*/
/* 						$('#Countdown{{ product.product_id }}-{{ i }}').countdown({*/
/* 						until: new Date({{ product.date_end|date("Y") }}, {{ product.date_end|date("m") }}-1, {{ product.date_end|date("d") }}, {{ product.date_end|date("H") }}, {{ product.date_end|date("i") }}, {{ product.date_end|date("s") }}),*/
/* 						labels: ['{{ text_years }}', '{{ text_months }} ', '{{ text_weeks }}', '{{ text_days }}', '{{ text_hrs }}', '{{ text_mins }}', '{{ text_secs }}'],*/
/* 						labels1: ['{{ text_year }}', '{{ text_month }} ', '{{ text_week }}', '{{ text_day }}', '{{ text_hr }}', '{{ text_min }}', '{{ text_sec }}'],*/
/* 						});*/
/* 						// $('#Countdown{{ product.product_id }}-{{ i }}').countdown('pause');*/
/* 						});*/
/* 						--></script>*/
/* 						{% endif %}*/
/* 				</div><!-- product-layout -->*/
/*             {% endif %}*/
/* 				{% if (count % rows == 0) or (count == products|length ) %}*/
/* 				</div>*/
/* 				{% endif %}#}*/
/* 			<div class="product-layout">*/
/* 				<div class="product-thumb">*/
/* 					<a href="{{ product.href }}">*/
/* 						<img src="{{ product.thumb }}">*/
/* 						<div class="tt-custom-caption">*/
/* 							<h4 class="product-name">{{ product.name }}</h4>*/
/* 						</div>*/
/* 					</a>*/
/* 				</div>*/
/* 			</div>*/
/*         {% endfor %}*/
/*     </div>*/
/*     {% if products_new_current and products_new_current < products_new_total %}*/
/* 		<div class="product-load-more">*/
/* 			<button id="button-newproduct-load-more" class="btn-ripple animated fadeInDown"><span>{{ text_load_more }}</span><i class="material-icons fas fa-arrow-circle-down"></i></button>*/
/* 		</div>*/
/*     {% endif %}*/
/* 	{#{% else %}*/
/* 		<p class="text_empty">{{ text_empty }}</p>*/
/* 	{% endif %}#}*/
/* </div>*/
/* {#*/
/* {% if config_module.slider %}*/
/*     <script type="text/javascript"><!--*/
/*         $(document).ready(function() {*/
/*             $("#product_module{{ config_module.module_id }} .tt-product").owlCarousel({*/
/*                 loop: {% if config_module.loop %} true {% else %} false {% endif %},*/
/*                 margin: {% if config_module.margin %} {{ config_module.margin }} {% else %} 20 {% endif %},*/
/*                 nav: {% if config_module.navigation %} true {% else %} false {% endif %},*/
/*                 dots: {% if config_module.pagination %} true {% else %} false {% endif %},*/
/*                 autoplay:  {% if config_module.auto %} true {% else %} false {% endif %},*/
/*                 autoplayTimeout: {% if config_module.time %} {{ config_module.time }} {% else %} 2000 {% endif %},*/
/*                 autoplayHoverPause: true,*/
/*                 autoplaySpeed: {% if config_module.speed %} {{ config_module.speed }} {% else %} 3000 {% endif %},*/
/*                 navSpeed: {% if config_module.speed %} {{ config_module.speed }} {% else %} 3000 {% endif %},*/
/*                 dotsSpeed: {% if config_module.speed %} {{ config_module.speed }} {% else %} 3000 {% endif %},*/
/* 				lazyLoad: true,*/
/* 				mouseDrag: false,*/
/*                 responsive:{*/
/* 					0:{*/
/* 						items: 1*/
/* 					},*/
/* 					481:{*/
/* 						items: 2*/
/* 					}*/
/* 					*/
/*                 }*/
/*             });*/
/* */
/* 				*/
/* 		$('.owl-carousel2').owlCarousel({*/
/* 			loop:true,*/
/* 			margin:0,*/
/* 			dots: false,*/
/* 			nav:false,*/
/* 			items:1,*/
/* 			autoplay:false,*/
/* 			autoplayHoverPause:false,*/
/* 			animateOut: 'fadeOut',*/
/* 			mouseDrag: false*/
/* 		});*/
/* 		*/
/* 		$('.owl-carousel2 .item-inner').mouseenter(function() {*/
/* 			if($(this).children().hasClass('product_inner')){	*/
/* 				console.log('hovered');			*/
/* 				var owl = $(this).children().children();*/
/* 				owl.trigger('next.owl.carousel', [900]);*/
/* 				setInterval(function a() {*/
/* 					owl.trigger('next.owl.carousel', [900]);*/
/* 				}, 1500);*/
/* 			}*/
/* 		});*/
/* 		$('.owl-carousel2 .item-inner').mouseleave(function() {*/
/* 			var owl = $(this).children().children();*/
/* 			setInterval(function() {*/
/* 				owl.trigger('to.owl.carousel', 0);*/
/* 				*/
/* 			}, 900);*/
/* 			*/
/* 			var highestTimeoutId = setTimeout(";");*/
/* 				for (var i = 0 ; i < highestTimeoutId ; i++) {*/
/* 					clearTimeout(i); */
/* 				}*/
/* 		});*/
/* 		*/
/* 		*/
/*         });*/
/*    --></script>*/
/* 							*/
/* 	*/
/* {% endif %}#}*/
/* <script>*/
/* 	$('#product_module{{ config_module.module_id }}').parents('.container')*/
/* 		.removeClass('container').addClass('container-fluid');*/
/* </script>*/
/* <script>*/
/* 	$(function() {*/
/*         var $btn = $('#button-newproduct-load-more');*/
/*         var $container = $('.tt-product-custom');*/
/*         function getEntry(href, thumb, name) {*/
/*             return '<div class="product-layout"><div class="product-thumb"><a href="' + href + '"><img src="' + thumb + '"><div class="tt-custom-caption"><h4 class="product-name">' + name + '</h4></div></a></div></div>'*/
/* 		}*/
/*         var currentOffset = parseInt({{ products_new_current }});*/
/*         var totalItems = {{ products_new_total }}*/
/*         $btn.click(function() {*/
/*             $btn.button('loading');*/
/*             $.ajax({*/
/* 				url: "{{ products_new_load_link }}",*/
/* 				method: "GET",*/
/* 				data: {*/
/* 				    cate_id: "{{ products_new_settings.cate_id }}",*/
/* 					limit: "{{ products_new_settings.limit }}",*/
/* 					width: "{{ products_new_settings.width }}",*/
/* 					height: "{{ products_new_settings.height }}",*/
/*                     offset: currentOffset*/
/* 				},*/
/* 				success: function(response) {*/
/* 				    if (!response.error) {*/
/* 				        if (response.products.length) {*/
/*                             for (var i = 0; i < response.products.length; i++) {*/
/*                                 var item = response.products[i];*/
/*                                 $container.append(getEntry(item.href, item.thumb, item.name));*/
/* 							}*/
/* 						}*/
/* 				        currentOffset += response.products.length;*/
/* 				        if (currentOffset >= totalItems) {*/
/* 				            $('.product-load-more').hide();*/
/* 						}*/
/* 					}*/
/* 				},*/
/* 				complete: function() {*/
/*                     $btn.button('reset');*/
/* 				}*/
/* 			});*/
/*         });*/
/* 	});*/
/* </script>*/
