<?php

/* tt_lazio1/template/common/currency.twig */
class __TwigTemplate_5f15abb7cc899b4476cf45715c0e02110d6e43c3bff303e69d2242542e357751 extends Twig_Template
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
        if ((twig_length_filter($this->env, (isset($context["currencies"]) ? $context["currencies"] : null)) > 1)) {
            // line 2
            echo "<form action=\"";
            echo (isset($context["action"]) ? $context["action"] : null);
            echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-currency\">
\t<div class=\"currency\">
\t\t<label>";
            // line 4
            echo (isset($context["text_currency"]) ? $context["text_currency"] : null);
            echo "</label>
\t  <button class=\"btn btn-link dropdown-toggle btn-currency\" data-toggle=\"dropdown\">";
            // line 5
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["currencies"]) ? $context["currencies"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["currency"]) {
                // line 6
                echo "      ";
                if (($this->getAttribute($context["currency"], "symbol_left", array()) && ($this->getAttribute($context["currency"], "code", array()) == (isset($context["code"]) ? $context["code"] : null)))) {
                    echo " <strong>";
                    echo $this->getAttribute($context["currency"], "code", array());
                    echo "</strong> ";
                } elseif (($this->getAttribute($context["currency"], "symbol_right", array()) && ($this->getAttribute($context["currency"], "code", array()) == (isset($context["code"]) ? $context["code"] : null)))) {
                    echo " <strong>";
                    echo $this->getAttribute($context["currency"], "symbol_right", array());
                    echo "</strong> ";
                }
                // line 7
                echo "      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['currency'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "<i class=\"ion-arrow-down-b\"></i></button>
\t  <ul class=\"dropdown-menu\">
\t\t";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["currencies"]) ? $context["currencies"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["currency"]) {
                // line 10
                echo "\t\t";
                if (($this->getAttribute($context["currency"], "code", array()) == (isset($context["code"]) ? $context["code"] : null))) {
                    // line 11
                    echo "\t\t<li>
\t\t  <button class=\"item-selected currency-select btn btn-link btn-block\" type=\"button\" name=\"";
                    // line 12
                    echo $this->getAttribute($context["currency"], "code", array());
                    echo "\">
\t\t\t";
                    // line 13
                    if ($this->getAttribute($context["currency"], "symbol_left", array())) {
                        echo " 
\t\t\t\t";
                        // line 14
                        echo $this->getAttribute($context["currency"], "symbol_left", array());
                        echo "
\t\t\t";
                    }
                    // line 15
                    echo "\t\t\t
\t\t\t";
                    // line 16
                    echo $this->getAttribute($context["currency"], "title", array());
                    echo "
\t\t\t";
                    // line 17
                    if ($this->getAttribute($context["currency"], "symbol_right", array())) {
                        echo " 
\t\t\t\t";
                        // line 18
                        echo $this->getAttribute($context["currency"], "symbol_right", array());
                        echo "
\t\t\t";
                    }
                    // line 20
                    echo "\t\t</button>
\t\t</li>
\t\t";
                } else {
                    // line 23
                    echo "\t\t<li>
\t\t  <button class=\"currency-select btn btn-link btn-block\" type=\"button\" name=\"";
                    // line 24
                    echo $this->getAttribute($context["currency"], "code", array());
                    echo "\">
\t\t\t";
                    // line 25
                    if ($this->getAttribute($context["currency"], "symbol_left", array())) {
                        echo " 
\t\t\t\t";
                        // line 26
                        echo $this->getAttribute($context["currency"], "symbol_left", array());
                        echo "
\t\t\t";
                    }
                    // line 27
                    echo "\t\t\t
\t\t\t";
                    // line 28
                    echo $this->getAttribute($context["currency"], "title", array());
                    echo "
\t\t\t";
                    // line 29
                    if ($this->getAttribute($context["currency"], "symbol_right", array())) {
                        echo " 
\t\t\t\t";
                        // line 30
                        echo $this->getAttribute($context["currency"], "symbol_right", array());
                        echo "
\t\t\t";
                    }
                    // line 32
                    echo "\t\t  </button>
\t\t</li>
\t\t";
                }
                // line 35
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['currency'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 36
            echo "\t  </ul>
\t</div>
\t<input type=\"hidden\" name=\"code\" value=\"\" />
\t<input type=\"hidden\" name=\"redirect\" value=\"";
            // line 39
            echo (isset($context["redirect"]) ? $context["redirect"] : null);
            echo "\" />
</form>
";
        }
        // line 41
        echo " ";
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/currency.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  153 => 41,  147 => 39,  142 => 36,  136 => 35,  131 => 32,  126 => 30,  122 => 29,  118 => 28,  115 => 27,  110 => 26,  106 => 25,  102 => 24,  99 => 23,  94 => 20,  89 => 18,  85 => 17,  81 => 16,  78 => 15,  73 => 14,  69 => 13,  65 => 12,  62 => 11,  59 => 10,  55 => 9,  46 => 7,  35 => 6,  31 => 5,  27 => 4,  21 => 2,  19 => 1,);
    }
}
/* {% if currencies|length > 1 %}*/
/* <form action="{{ action }}" method="post" enctype="multipart/form-data" id="form-currency">*/
/* 	<div class="currency">*/
/* 		<label>{{ text_currency }}</label>*/
/* 	  <button class="btn btn-link dropdown-toggle btn-currency" data-toggle="dropdown">{% for currency in currencies %}*/
/*       {% if currency.symbol_left and currency.code == code %} <strong>{{ currency.code }}</strong> {% elseif currency.symbol_right and currency.code == code %} <strong>{{ currency.symbol_right }}</strong> {% endif %}*/
/*       {% endfor %}<i class="ion-arrow-down-b"></i></button>*/
/* 	  <ul class="dropdown-menu">*/
/* 		{% for currency in currencies %}*/
/* 		{% if currency.code == code %}*/
/* 		<li>*/
/* 		  <button class="item-selected currency-select btn btn-link btn-block" type="button" name="{{ currency.code }}">*/
/* 			{% if currency.symbol_left %} */
/* 				{{ currency.symbol_left }}*/
/* 			{% endif %}			*/
/* 			{{ currency.title }}*/
/* 			{% if currency.symbol_right %} */
/* 				{{ currency.symbol_right }}*/
/* 			{% endif %}*/
/* 		</button>*/
/* 		</li>*/
/* 		{% else %}*/
/* 		<li>*/
/* 		  <button class="currency-select btn btn-link btn-block" type="button" name="{{ currency.code }}">*/
/* 			{% if currency.symbol_left %} */
/* 				{{ currency.symbol_left }}*/
/* 			{% endif %}			*/
/* 			{{ currency.title }}*/
/* 			{% if currency.symbol_right %} */
/* 				{{ currency.symbol_right }}*/
/* 			{% endif %}*/
/* 		  </button>*/
/* 		</li>*/
/* 		{% endif %}*/
/* 		{% endfor %}*/
/* 	  </ul>*/
/* 	</div>*/
/* 	<input type="hidden" name="code" value="" />*/
/* 	<input type="hidden" name="redirect" value="{{ redirect }}" />*/
/* </form>*/
/* {% endif %} */
