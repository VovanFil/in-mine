<?php

/* tt_lazio1/template/common/search.twig */
class __TwigTemplate_551e3908d4c7b309f5ea0416eb3b6aa387ccd5c72c69019a7c5ae02f21147f15 extends Twig_Template
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
        echo "<div class=\"search-container\">
\t<div class=\"search-content\">
\t\t<div id=\"search\">
\t\t\t<!-- <h1>";
        // line 4
        echo (isset($context["text_search"]) ? $context["text_search"] : null);
        echo "</h1> -->
\t\t\t<input type=\"text\" name=\"search\" value=\"";
        // line 5
        echo (isset($context["search"]) ? $context["search"] : null);
        echo "\" placeholder=\"";
        echo (isset($context["text_search"]) ? $context["text_search"] : null);
        echo "\" class=\"form-control input-lg\" />
\t\t\t<button type=\"button\" class=\"btn btn-default btn-lg\"><i class=\"ion-ios-search-strong\"></i></button>
\t\t</div>
\t</div>
</div>";
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/search.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  28 => 5,  24 => 4,  19 => 1,);
    }
}
/* <div class="search-container">*/
/* 	<div class="search-content">*/
/* 		<div id="search">*/
/* 			<!-- <h1>{{ text_search }}</h1> -->*/
/* 			<input type="text" name="search" value="{{ search }}" placeholder="{{ text_search }}" class="form-control input-lg" />*/
/* 			<button type="button" class="btn btn-default btn-lg"><i class="ion-ios-search-strong"></i></button>*/
/* 		</div>*/
/* 	</div>*/
/* </div>*/
