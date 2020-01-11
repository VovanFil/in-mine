<?php

/* tt_lazio1/template/common/home.twig */
class __TwigTemplate_0e53f3ac0f592ebad0dc92bf302a72295cdbacc30deee04bc5aa875d27844cf5 extends Twig_Template
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
        echo (isset($context["header"]) ? $context["header"] : null);
        echo "
<div id=\"content\">

\t\t";
        // line 4
        echo (isset($context["content_top"]) ? $context["content_top"] : null);
        echo "
\t\t
\t\t
\t\t
\t\t";
        // line 8
        echo (isset($context["column_left"]) ? $context["column_left"] : null);
        echo "\t\t\t
\t\t";
        // line 9
        echo (isset($context["content_bottom"]) ? $context["content_bottom"] : null);
        echo "\t\t
\t\t";
        // line 10
        echo (isset($context["column_right"]) ? $context["column_right"] : null);
        echo "\t\t
\t</div>
";
        // line 12
        echo (isset($context["footer"]) ? $context["footer"] : null);
    }

    public function getTemplateName()
    {
        return "tt_lazio1/template/common/home.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  45 => 12,  40 => 10,  36 => 9,  32 => 8,  25 => 4,  19 => 1,);
    }
}
/* {{ header }}*/
/* <div id="content">*/
/* */
/* 		{{ content_top }}*/
/* 		*/
/* 		*/
/* 		*/
/* 		{{ column_left }}			*/
/* 		{{ content_bottom }}		*/
/* 		{{ column_right }}		*/
/* 	</div>*/
/* {{ footer }}*/
