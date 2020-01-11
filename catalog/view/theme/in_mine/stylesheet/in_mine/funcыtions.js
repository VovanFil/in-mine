jQuery.noConflict()(function ($) {
	"use strict";
	$('body.page-template-portfolio').css('min-height', $(window).outerHeight());
	$('.insert_after_portfolio').insertAfter('.potfolio_container_holder');
	/*MENU*/
	$('.primary-menu > li.menu-item-has-children > a').click(function (e) {
		$('.primary-menu li ul').css('display', 'none');
		$(this).parent().find('> ul').css('display', 'block');
		e.preventDefault();
	});
	
	$('#open_mobile_menu').click(function (e) {
		e.preventDefault();
		$('body').toggleClass('mobile_open');
	});
	$('.menu_overlay').click(function (e) {
		e.preventDefault();
		$('body').toggleClass('mobile_open');
	});
	/*END ---- MENU*/
	/*************************************/
	//Ajax Portfolio Shortcode
	if ($('#oi_current_image_shortcode').length) {
		$('#oi_current_image_shortcode').height($(window).outerHeight() - $('#middle-header').outerHeight()-70);
		$('#oi_next_image_shortcode').height($(window).outerHeight() - $('#middle-header').outerHeight()-70);
		$('#oi_c_h').height($(window).outerHeight() - $('#middle-header').outerHeight() -70);
		$('#oi_current_image_shortcode').parents('.vc_column-inner').css('padding', 0);
	}
	
	$('.oi_crea_a').click(function (e) {
		var first = $('.oi_creative_p_content').attr('data-first');
		var last = $('.oi_creative_p_content').attr('data-last');
		var tags = $('.oi_creative_p_content').attr('data-tags');
		if ($('#oi_current_image_shortcode').length) {
			var img = $('#oi_current_image_shortcode').css('background-image');
			img = img.replace('url("', '"').replace(')', '');
		} else {
			var img = $('#oi_current_image').attr('style');
		}
		var id = $(this).attr('data-id');

		$('.oi_creative_p_content').animate({
			'opacity': 0
		}, 300);

		$.get(
			oi_theme.ajax_url, {
				'action': 'union_ajax_request_c',
				'id': id.toString(),
				'first': first.toString(),
				'last': last.toString(),
				'tags': tags
			},
			function (result, status) {
				$(result.new_posts).imagesLoaded(function () {
					$('#oi_current_image_shortcode').css('background-image', 'url(' + img + ')');
					$('#oi_next_image_shortcode').css('background-image', 'url("' + result.new_posts.url + '")');

					$('.oi_prev_c_p').attr('data-id', result.new_posts.prev);
					$('.oi_next_c_p').attr('data-id', result.new_posts.next);
					$('.oi_c_title a').html(result.new_posts.title);
					$('.oi_c_cats').html(result.new_posts.cat);
					$('.oi_c_title a').attr('href', result.new_posts.details);
					$('.oi_c_title a').attr('data-id', result.new_posts.cur);
					$('.oi_c_details').attr('data-id', result.new_posts.cur);
					$('#oi_next_image_shortcode').animate({
						'opacity': 1
					}, 600);
					setTimeout(function () {
						$('#oi_current_image_shortcode').css('background-image', 'url("' + result.new_posts.url + '")')
					}, 560);
					setTimeout(function () {
						$('#oi_next_image_shortcode').animate({
							'opacity': 0
						}, 100)
					}, 800);
					setTimeout(function () {
						$('.oi_creative_p_content').animate({
							'opacity': 1
						}, 400)
					}, 860);


				});
			},
			"json"
		);
		e.preventDefault();
	});


	$('a[data-rel^=lightcase]').lightcase();
	lightcase.resize();
	
	
$(window).load(function() {


	        if ($('.st_sf_port_filter_holder').length) {
            $('#filters .filter_button').each(function() {
                var item_class = $(this).data('filter');
                if (item_class != '*') {
                    $(this).append('<span>' + $(item_class).length + '</span>');
                } else {
                    $(this).append('<span>' + '' + '</span>');
                }
            });
        }
		
		
		
		
		
		
		
});





$(window).scroll(function() {
	
        var ht = 0;
		
		
	
	    if($('*').is('#big-preview')) {
           ht = $('#big-preview').height();
           $('.primary-menu').addClass('primary-menu-white');
        }
        else {
           ht = 0; 
         }
	
	
	
        if ($(this).scrollTop() >= 80) {  /*40*/
		
            /*$('.main-header').addClass('scrol');*/
			
			
			var wd = $('.st_sf_port_container').width();
			
			
			
			$('#big-preview').css('width',wd - 10);
			$('.big-p').css('width',wd + 200);
			
			$('#big-preview').css('height','500px');
		    ht = $('#big-preview').height();
			
			 $('#big-preview').find('img').css("-webkit-filter" , "grayscale(100%)");
			
        } else {
            /*$('.main-header').removeClass('scrol');*/
			
			$('#big-preview').css('width','100%');
			$('.big-p').css('width','100%');
			
		    $('#big-preview').css('height','calc(100vh - 30px)');
			ht = $('#big-preview').height();
			
			$('#big-preview').find('img').css("-webkit-filter" , "grayscale(0%)");
			
			
        }

      
	  
        if ($(window).scrollTop() >= 80) { /*80*/ /*40*/
		
if($('*').is('#big-preview')) {
			$('.main-header').css('margin-top','0px');
			 $('.primary-menu').removeClass('primary-menu-white');
}
			 
        } else {
            
			  if($('*').is('#big-preview')) {
			$('.main-header').css('margin-top','-130px');
            $('.primary-menu').addClass('primary-menu-white');
			  }
        }
		
		
		
		if ($(window).scrollTop() >= ht + 600) { /*80*/ /*40*/
             $('.main-header').addClass('fix');
			
        } else {
            $('.main-header').removeClass('fix');
			
        }
   

        /*headerPosition();*/
    });
	
	
	
$( document ).ready(function() {
	if($('*').is('#big-preview')) {
	$('.primary-menu').addClass('primary-menu-white');
	$('.main-header').addClass('home_page_header');
	
$('#big-preview').imagesLoaded()
  .always( function( instance ) {
    console.log('all images loaded');
  });
  
  
  var loading = $('#loading');
$('body').waitForImages(function()
{    
    loading.addClass('hidden');  
}, function(loaded, total)
{
    loading.html(loaded + ' of ' + total);

});
  
  
  }
	
	
});

	
	
});





