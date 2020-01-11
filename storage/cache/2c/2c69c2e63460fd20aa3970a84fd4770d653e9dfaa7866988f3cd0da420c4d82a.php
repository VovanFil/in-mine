<?php

/* tt_lazio1/template/common/language.twig */
class __TwigTemplate_9a34deca007e456470ec818b40ffeadffc3a5873c3b1d70f9fa95d22c8492802 extends Twig_Template
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
        if ((twig_length_filter($this->env, (isset($context["languages"]) ? $context["languages"] : null)) >= 1)) {
            // line 2
            echo "  <form action=\"";
            echo (isset($context["action"]) ? $context["action"] : null);
            echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-language\">
    <div class=\"language\">
\t  <label>";
            // line 4
            echo (isset($context["text_language"]) ? $context["text_language"] : null);
            echo "</label>
      <button class=\"btn btn-link btn-language dropdown-toggle\" data-toggle=\"dropdown\">
      ";
            // line 6
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["languages"]) ? $context["languages"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 7
                echo "      ";
                if (($this->getAttribute($context["language"], "code", array()) == (isset($context["code"]) ? $context["code"] : null))) {
                    // line 8
                    echo "\t  <img src=\"catalog/language/";
                    echo $this->getAttribute($context["language"], "code", array());
                    echo "/";
                    echo $this->getAttribute($context["language"], "code", array());
                    echo ".png\" alt=\"";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "\">
\t  ";
                    // line 9
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "
      ";
                }
                // line 11
                echo "      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 12
            echo "\t  <i class=\"ion-arrow-down-b\"></i></button>
      <ul class=\"dropdown-menu\">
        ";
            // line 14
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["languages"]) ? $context["languages"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 15
                echo "\t\t ";
                if (($this->getAttribute($context["language"], "code", array()) == (isset($context["code"]) ? $context["code"] : null))) {
                    // line 16
                    echo "\t\t\t<li><button class=\"btn btn-link btn-block language-select item-selected\" type=\"button\" name=\"";
                    echo $this->getAttribute($context["language"], "code", array());
                    echo "\">";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "</button></li>
\t\t";
                } else {
                    // line 18
                    echo "\t\t\t<li><button class=\"btn btn-link btn-block language-select\" type=\"button\" name=\"";
                    echo $this->getAttribute($context["language"], "code", array());
                    echo "\">";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "</button></li>
\t\t";
                }
                // line 20
                echo "      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 21
            echo "      </ul>
    </div>
    <input type=\"hidden\" name=\"code\" value=\"\" />
    <input type=\"hidden\" name=\"redirect\" value=\"";
            // line 24
            echo (isset($context["redirect"]) ? $context["redirect"] : null);
            echo "\" />
  </form>
  
";
        }
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/language.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  99 => 24,  94 => 21,  88 => 20,  80 => 18,  72 => 16,  69 => 15,  65 => 14,  61 => 12,  55 => 11,  50 => 9,  39 => 8,  36 => 7,  32 => 6,  27 => 4,  21 => 2,  19 => 1,);
    }
}
/* {% if languages|length >= 1 %}*/
/*   <form action="{{ action }}" method="post" enctype="multipart/form-data" id="form-language">*/
/*     <div class="language">*/
/* 	  <label>{{ text_language }}</label>*/
/*       <button class="btn btn-link btn-language dropdown-toggle" data-toggle="dropdown">*/
/*       {% for language in languages %}*/
/*       {% if language.code == code %}*/
/* 	  <img src="catalog/language/{{ language.code }}/{{ language.code }}.png" alt="{{ language.name }}" title="{{ language.name }}">*/
/* 	  {{ language.name }}*/
/*       {% endif %}*/
/*       {% endfor %}*/
/* 	  <i class="ion-arrow-down-b"></i></button>*/
/*       <ul class="dropdown-menu">*/
/*         {% for language in languages %}*/
/* 		 {% if language.code == code %}*/
/* 			<li><button class="btn btn-link btn-block language-select item-selected" type="button" name="{{ language.code }}">{{ language.name }}</button></li>*/
/* 		{% else %}*/
/* 			<li><button class="btn btn-link btn-block language-select" type="button" name="{{ language.code }}">{{ language.name }}</button></li>*/
/* 		{% endif %}*/
/*       {% endfor %}*/
/*       </ul>*/
/*     </div>*/
/*     <input type="hidden" name="code" value="" />*/
/*     <input type="hidden" name="redirect" value="{{ redirect }}" />*/
/*   </form>*/
/*   */
/* {% endif %}*/
/* */
