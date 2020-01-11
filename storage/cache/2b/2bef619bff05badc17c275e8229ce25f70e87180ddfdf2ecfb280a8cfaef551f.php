<?php

/* tt_lazio1/template/common/footer.twig */
class __TwigTemplate_c200b055de6823534a308ce3b5b88d3d46b5dbf06c95b047017c60e819c18d9f extends Twig_Template
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
        echo "<footer>
\t";
        // line 2
        if ((isset($context["block4"]) ? $context["block4"] : null)) {
            // line 3
            echo "\t\t";
            echo (isset($context["block4"]) ? $context["block4"] : null);
            echo "
\t";
        }
        // line 5
        echo "\t<div class=\"footer-static\">
\t\t<div class=\"container\">
\t\t\t<div class=\"container-inner\">
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-sm-12 col-md-8 col-md-offset-2 col-xs-12\">
\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t<!-- <div class=\"col-xs-12 col-sm-12 col-md-4\">
\t\t\t\t\t\t\t\t";
        // line 12
        if ((isset($context["informations"]) ? $context["informations"] : null)) {
            // line 13
            echo "\t\t\t\t\t\t\t\t<div class=\"col col1\">
\t\t\t\t\t\t\t\t\t<div class=\"footer-title\"><h2>";
            // line 14
            echo (isset($context["text_information"]) ? $context["text_information"] : null);
            echo "</h2>
\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t<div class=\"footer-content\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t";
            // line 18
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["informations"]) ? $context["informations"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["information"]) {
                // line 19
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
                echo $this->getAttribute($context["information"], "href", array());
                echo "\">";
                echo $this->getAttribute($context["information"], "title", array());
                echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['information'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 21
            echo "\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        }
        // line 27
        echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-xs-12 col-sm-12 col-md-4\">
\t\t\t\t\t\t\t\t<div class=\"col \">
\t\t\t\t\t\t\t\t\t<div class=\"footer-title\"><h2>";
        // line 30
        echo (isset($context["text_extra"]) ? $context["text_extra"] : null);
        echo "</h2>
\t\t\t\t\t\t\t\t\t<div class=\"footer-content\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t<!--<li><a href=\"";
        // line 33
        echo (isset($context["manufacturer"]) ? $context["manufacturer"] : null);
        echo "\">";
        echo (isset($context["text_manufacturer"]) ? $context["text_manufacturer"] : null);
        echo "</a></li>-->
\t\t\t\t\t\t\t\t\t\t\t<!--<li><a href=\"";
        // line 34
        echo (isset($context["voucher"]) ? $context["voucher"] : null);
        echo "\">";
        echo (isset($context["text_voucher"]) ? $context["text_voucher"] : null);
        echo "</a></li>-->
\t\t\t\t\t\t\t\t\t\t<!--\t<li><a href=\"";
        // line 35
        echo (isset($context["affiliate"]) ? $context["affiliate"] : null);
        echo "\">";
        echo (isset($context["text_affiliate"]) ? $context["text_affiliate"] : null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
        // line 36
        echo (isset($context["special"]) ? $context["special"] : null);
        echo "\">";
        echo (isset($context["text_special"]) ? $context["text_special"] : null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t<div class=\"col-xs-12 col-sm-12 col-md-4\">
\t\t\t\t\t\t\t\t<div class=\"col col2\">
\t\t\t\t\t\t\t\t\t<div class=\"footer-title\"><h2>";
        // line 44
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "</h2>
\t\t\t\t\t\t\t\t\t<div class=\"footer-content\">
\t\t\t\t\t\t\t\t\t\t<ul class=\"list-unstyled\">
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
        // line 47
        echo (isset($context["account"]) ? $context["account"] : null);
        echo "\">";
        echo (isset($context["text_account"]) ? $context["text_account"] : null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
        // line 48
        echo (isset($context["order"]) ? $context["order"] : null);
        echo "\">";
        echo (isset($context["text_order"]) ? $context["text_order"] : null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"";
        // line 49
        echo (isset($context["wishlist"]) ? $context["wishlist"] : null);
        echo "\">";
        echo (isset($context["text_wishlist"]) ? $context["text_wishlist"] : null);
        echo "</a></li>
\t\t\t\t\t\t\t\t\t<!--<li><a href=\"";
        // line 50
        echo (isset($context["newsletter"]) ? $context["newsletter"] : null);
        echo "\">";
        echo (isset($context["text_newsletter"]) ? $context["text_newsletter"] : null);
        echo "</a></li>-->
\t\t\t\t\t\t\t\t\t\t<!--\t\t</ul>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>-->
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t<!--<div class=\"footer-linklogo\">
\t\t<div class=\"container\">
\t\t\t<div class=\"footer-logo\">
\t\t\t\t<a href=\"#\"><img  src=\"catalog/view/theme/tt_lazio1/image/logo-footer.png\" alt=\"\"></a>
\t\t\t</div>
\t\t\t";
        // line 68
        if ((isset($context["block6"]) ? $context["block6"] : null)) {
            echo " ";
            echo (isset($context["block6"]) ? $context["block6"] : null);
            echo " ";
        }
        // line 69
        echo "\t\t</div>
\t</div>-->
\t<div class=\"copyright\">
\t\t<div class=\"container-fluid\">
\t\t\t<div class=\"container-inner\">
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-6 col-sm-6 col-xs-12\">
\t\t\t\t\t\t<p class=\"copyright-text\">In Mine. Developed by <a href=\"https://vk.com/progector_smm\" target=\"_blank\">ProgectorSMM</a>.</p>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-6 col-sm-6 col-xs-12\">
\t\t\t\t\t\t<div class=\"footer-paypal\">
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t<!--<li><a href=\"#\"><img src=\"catalog/view/theme/tt_lazio1/image/paypal.jpg\" alt=\"image\"></a></li>
\t\t\t\t\t\t\t\t<li><a href=\"#\"><img src=\"catalog/view/theme/tt_lazio1/image/paypal1.jpg\" alt=\"image\"></a></li>
\t\t\t\t\t\t\t\t<li><a href=\"#\"><img src=\"catalog/view/theme/tt_lazio1/image/paypal2.jpg\" alt=\"image\"></a></li>-->
\t\t\t\t\t\t\t\t<li><img src=\"catalog/view/theme/tt_lazio1/image/paypal3.jpg\" alt=\"image\"></li>
\t\t\t\t\t\t\t\t<li><img src=\"catalog/view/theme/tt_lazio1/image/paypal4.jpg\" alt=\"image\"></li>
\t\t\t\t\t\t\t\t<li><img src=\"catalog/view/theme/tt_lazio1/image/paypal5.jpg\" alt=\"image\"></li>
\t\t\t\t\t\t\t\t<li><img src=\"catalog/view/theme/tt_lazio1/image/qiwi_logo_rgb_small.png\" alt=\"image\"></li>
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t";
        // line 95
        if ((isset($context["block7"]) ? $context["block7"] : null)) {
            echo " ";
            echo (isset($context["block7"]) ? $context["block7"] : null);
            echo " ";
        }
        // line 96
        echo "
\t<div id=\"back-top\">";
        // line 97
        echo (isset($context["text_backtop"]) ? $context["text_backtop"] : null);
        echo "</div>
</footer>
<script type=\"text/javascript\">
\$(document).ready(function(){
\t// hide #back-top first
\t\$(\"#back-top\").hide();
\t// fade in #back-top
\t\$(function () {
\t\t\$(window).scroll(function () {
\t\t\tif (\$(this).scrollTop() > 300) {
\t\t\t\t\$('#back-top').fadeIn();
\t\t\t} else {
\t\t\t\t\$('#back-top').fadeOut();
\t\t\t}
\t\t});
\t\t// scroll body to 0px on click
\t\t\$('#back-top').click(function () {
\t\t\t\$('body,html').animate({scrollTop: 0}, 800);
\t\t\treturn false;
\t\t});
\t});
\tif (jQuery(window).width() < 992) {   
\t\tjQuery('.footer-static .footer-title').click(function(){     
\t\t\tjQuery(this).parent('.col').toggleClass('active').siblings().removeClass('active'); 
\t\t\tjQuery(this).next('.col .footer-content').toggle(300);
\t\t\tjQuery(this).parent('.col.active').siblings().children('.col .footer-content').slideUp(300); 
\t\t}); 
\t\t 
\t}
});
</script>
</div><!-- wrapper -->
</body></html>";
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  206 => 97,  203 => 96,  197 => 95,  169 => 69,  163 => 68,  140 => 50,  134 => 49,  128 => 48,  122 => 47,  116 => 44,  103 => 36,  97 => 35,  91 => 34,  85 => 33,  79 => 30,  74 => 27,  66 => 21,  55 => 19,  51 => 18,  44 => 14,  41 => 13,  39 => 12,  30 => 5,  24 => 3,  22 => 2,  19 => 1,);
    }
}
/* <footer>*/
/* 	{% if block4 %}*/
/* 		{{ block4 }}*/
/* 	{% endif %}*/
/* 	<div class="footer-static">*/
/* 		<div class="container">*/
/* 			<div class="container-inner">*/
/* 				<div class="row">*/
/* 					<div class="col-sm-12 col-md-8 col-md-offset-2 col-xs-12">*/
/* 						<div class="row">*/
/* 							<!-- <div class="col-xs-12 col-sm-12 col-md-4">*/
/* 								{% if informations %}*/
/* 								<div class="col col1">*/
/* 									<div class="footer-title"><h2>{{ text_information }}</h2>*/
/* 									*/
/* 									<div class="footer-content">*/
/* 										<ul class="list-unstyled">*/
/* 											{% for information in informations %}*/
/* 												<li><a href="{{ information.href }}">{{ information.title }}</a></li>*/
/* 											{% endfor %}*/
/* 										</ul>*/
/* 									</div>*/
/* 									</div>*/
/* 									*/
/* 								</div>*/
/* 								{% endif %}*/
/* 							</div>*/
/* 							<div class="col-xs-12 col-sm-12 col-md-4">*/
/* 								<div class="col ">*/
/* 									<div class="footer-title"><h2>{{ text_extra }}</h2>*/
/* 									<div class="footer-content">*/
/* 										<ul class="list-unstyled">*/
/* 											<!--<li><a href="{{ manufacturer }}">{{ text_manufacturer }}</a></li>-->*/
/* 											<!--<li><a href="{{ voucher }}">{{ text_voucher }}</a></li>-->*/
/* 										<!--	<li><a href="{{ affiliate }}">{{ text_affiliate }}</a></li>*/
/* 											<li><a href="{{ special }}">{{ text_special }}</a></li>*/
/* 										</ul>*/
/* 									</div>*/
/* 									</div>*/
/* 								</div>*/
/* 							</div>*/
/* 							<div class="col-xs-12 col-sm-12 col-md-4">*/
/* 								<div class="col col2">*/
/* 									<div class="footer-title"><h2>{{ text_account }}</h2>*/
/* 									<div class="footer-content">*/
/* 										<ul class="list-unstyled">*/
/* 											<li><a href="{{ account }}">{{ text_account }}</a></li>*/
/* 											<li><a href="{{ order }}">{{ text_order }}</a></li>*/
/* 											<li><a href="{{ wishlist }}">{{ text_wishlist }}</a></li>*/
/* 									<!--<li><a href="{{ newsletter }}">{{ text_newsletter }}</a></li>-->*/
/* 										<!--		</ul>*/
/* 									</div>*/
/* 									</div>*/
/* 								</div>*/
/* 							</div>-->*/
/* 						</div>*/
/* 					</div>*/
/* 					*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!--<div class="footer-linklogo">*/
/* 		<div class="container">*/
/* 			<div class="footer-logo">*/
/* 				<a href="#"><img  src="catalog/view/theme/tt_lazio1/image/logo-footer.png" alt=""></a>*/
/* 			</div>*/
/* 			{% if block6 %} {{ block6 }} {% endif %}*/
/* 		</div>*/
/* 	</div>-->*/
/* 	<div class="copyright">*/
/* 		<div class="container-fluid">*/
/* 			<div class="container-inner">*/
/* 				<div class="row">*/
/* 					<div class="col-md-6 col-sm-6 col-xs-12">*/
/* 						<p class="copyright-text">In Mine. Developed by <a href="https://vk.com/progector_smm" target="_blank">ProgectorSMM</a>.</p>*/
/* 					</div>*/
/* 					<div class="col-md-6 col-sm-6 col-xs-12">*/
/* 						<div class="footer-paypal">*/
/* 							<ul>*/
/* 								<!--<li><a href="#"><img src="catalog/view/theme/tt_lazio1/image/paypal.jpg" alt="image"></a></li>*/
/* 								<li><a href="#"><img src="catalog/view/theme/tt_lazio1/image/paypal1.jpg" alt="image"></a></li>*/
/* 								<li><a href="#"><img src="catalog/view/theme/tt_lazio1/image/paypal2.jpg" alt="image"></a></li>-->*/
/* 								<li><img src="catalog/view/theme/tt_lazio1/image/paypal3.jpg" alt="image"></li>*/
/* 								<li><img src="catalog/view/theme/tt_lazio1/image/paypal4.jpg" alt="image"></li>*/
/* 								<li><img src="catalog/view/theme/tt_lazio1/image/paypal5.jpg" alt="image"></li>*/
/* 								<li><img src="catalog/view/theme/tt_lazio1/image/qiwi_logo_rgb_small.png" alt="image"></li>*/
/* 							</ul>*/
/* 						</div>*/
/* 					</div>*/
/* 				</div>*/
/* 			</div>*/
/* 		</div>*/
/* 	</div>*/
/* 	{% if block7 %} {{ block7 }} {% endif %}*/
/* */
/* 	<div id="back-top">{{ text_backtop }}</div>*/
/* </footer>*/
/* <script type="text/javascript">*/
/* $(document).ready(function(){*/
/* 	// hide #back-top first*/
/* 	$("#back-top").hide();*/
/* 	// fade in #back-top*/
/* 	$(function () {*/
/* 		$(window).scroll(function () {*/
/* 			if ($(this).scrollTop() > 300) {*/
/* 				$('#back-top').fadeIn();*/
/* 			} else {*/
/* 				$('#back-top').fadeOut();*/
/* 			}*/
/* 		});*/
/* 		// scroll body to 0px on click*/
/* 		$('#back-top').click(function () {*/
/* 			$('body,html').animate({scrollTop: 0}, 800);*/
/* 			return false;*/
/* 		});*/
/* 	});*/
/* 	if (jQuery(window).width() < 992) {   */
/* 		jQuery('.footer-static .footer-title').click(function(){     */
/* 			jQuery(this).parent('.col').toggleClass('active').siblings().removeClass('active'); */
/* 			jQuery(this).next('.col .footer-content').toggle(300);*/
/* 			jQuery(this).parent('.col.active').siblings().children('.col .footer-content').slideUp(300); */
/* 		}); */
/* 		 */
/* 	}*/
/* });*/
/* </script>*/
/* </div><!-- wrapper -->*/
/* </body></html>*/
