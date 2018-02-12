var sliderPosition = 0;
var _autoplay = false;
var _timer = null;

/*
    @param autoplay - type: bool, defines if slider should change slides autimatically after time
    @param timeToSlide - type: int, defines time needed to change slide if autoplay is enabled (1sec = 1000)
 */
function SliderInit(autoplay, timeToSlide) {
    /*
        Function sliderSetup builds slides from slider-config.js file along with next/prev slide buttons. It is implemented
        to meet the task requirements, as this should be a standalone plugin. The drawback of this solution is that it's not
        compatible with SEO. Slider is loaded in $(document).ready, so it won't be really visible to the robots.
        I created template for slider in HTML file and I suggest loading slider only with it. If you want to load slides with
        config, just uncomment line below this comment and comment/delete template from HTML (everything in #Slider div
        and prev/next slide button). Slider's config file is loaded in HTML, I'm keeping it here just in case.
     */
    // if(jQuery('.slider--container').length === 0) sliderSetup();

    var slider = jQuery('.slider--container');
    var singleSlide = jQuery('.slider--single__slide');
    var sliderWidth = jQuery("#Slider").width();
    var windowWidth = jQuery(window).innerWidth();
    var slidesAmount = jQuery(singleSlide).length;
    var pxToSlide = parseInt(singleSlide.outerWidth());
    var slidesPerPage;

    if (windowWidth > 993) {
        slidesPerPage = 4;
        var singleSlideWidth = sliderWidth / slidesPerPage;
    } else if (windowWidth > 778) {
        slidesPerPage = 3;
        var singleSlideWidth = sliderWidth / slidesPerPage;
    } else if (windowWidth > 420) {
        slidesPerPage = 2;
        var singleSlideWidth = sliderWidth / slidesPerPage;
    } else {
        slidesPerPage = 1;
        singleSlideWidth = sliderWidth;
    }

    singleSlide.each(function (i) {
        jQuery(this).css('width', singleSlideWidth);
    });
    slider.css('width', singleSlideWidth * slidesAmount);
    slider.css('right', setRightOffset(slider.width() - sliderWidth, pxToSlide));

    setupSliderPagination(slidesAmount, slidesPerPage);

    if(autoplay) {
        _autoplay = autoplay;
        var defaultTime = 5000;
        var time = timeToSlide !== undefined ? jQuery.isNumeric(timeToSlide) ? parseInt(timeToSlide) : defaultTime : defaultTime;
        _timer = time;

        sliderAutoplay(time);
    }
}

/*
    Display slides based on slider-config.js file. Delete slider's template code from HTML file to make it work.
 */
function sliderSetup() {
    var slider = jQuery('#Slider');
    var sliderContainerClass = 'slider--container';
    slider.append('<div class="'+sliderContainerClass+'"></div>');
    var slide = '';
    jQuery(slides).each(function(key, value) {
        slide = '<div class="slider--single__slide">';
        jQuery.each(value, function(key2, value2) {
            if(key2 == 'image') slide += '<img src="'+value2+'" alt="Slider image" title="Slider image"/>'
            if(key2 == 'description') slide += '<p>'+value2+'</p>';
        });
        slide += '</div>';
        console.log(slide);
        jQuery('.slider--container').append(slide);
    });

    jQuery('<button class="button--slide__left" onclick="SlideLeft()"><</button>').insertBefore(slider);
    jQuery('<div class="slider--pagination"></div>').insertAfter(slider);
    jQuery('<button class="button--slide__right" onclick="SlideRight()">></button>').insertAfter(slider);
}

//Sets Slider's right css value, useful especially when window is resized
function setRightOffset(sliderWidth, pxToSlide) {
    if (sliderPosition * pxToSlide > sliderWidth) {
        sliderPosition--;
        setRightOffset(sliderWidth, pxToSlide);
    }

    return sliderPosition * pxToSlide;
}

//Displays pagination buttons
function setupSliderPagination(slidesAmount, slidesPerPage) {
    var pagesAmount = Math.ceil(slidesAmount / slidesPerPage);
    var paginationBlock = jQuery('.slider--pagination');

    paginationBlock.empty();

    for(var i = 1; i <= pagesAmount; i++) {
        var content = '<button class="slider--pagination__page" onclick="sliderSetPage('+i+',' + ((i-1)*slidesPerPage) + ')">'+i+'</button>';
        paginationBlock.append(content);
    }
}

//Next slide function
function SlideRight() {
    var pxToSlide = parseInt(jQuery('.slider--single__slide').outerWidth());
    var slider = jQuery('.slider--container');
    var sliderHolderWidth = slider.width() - jQuery("#Slider").width();
    var rightPx = parseInt(slider.css("right"));

    if (Math.abs(rightPx % pxToSlide != 0)) {
        return;
    }
    if (Math.abs(rightPx) < sliderHolderWidth) {
        slider.css('right', rightPx + pxToSlide + "px");
        sliderPosition++;
    } else {
        /*
            Go to the beginning of the slider if this is the last slide. To disable going-back-to-the-beginning function,
            just comment the whole else{} block (clicking 'next slide' will do nothing)
        */
        var sliderWidth = jQuery("#Slider").width();
        sliderPosition = 0;
        slider.css('right', setRightOffset(slider.width() - sliderWidth, pxToSlide));
    }

    if(_autoplay)
        sliderAutoplay(_timer); // reset autoplay timer
}

//Previous slide function
function SlideLeft() {
    var pxToSlide = parseInt(jQuery('.slider--single__slide').outerWidth());
    var slider = jQuery('.slider--container');
    var rightPx = parseInt(slider.css("right"));
    if (Math.abs(rightPx % pxToSlide != 0)) {
        return;
    }
    if (rightPx > 0) {
        slider.css('right', rightPx - pxToSlide + "px");
        sliderPosition--;
    } else {
        /*
            Go to the end of the slider if this is the last slide. To disable going-back-to-the-end function,
            just comment the whole else{} block (clicking 'previous slide' will do nothing). If this is disabled, first
            if condition in this function must be changed:
            "if (Math.abs(rightPx % pxToSlide != 0))" => "if (rightPx == 0 || Math.abs(rightPx % pxToSlide != 0))"
        */
        var sliderWidth = jQuery("#Slider").width();
        sliderPosition = jQuery(jQuery('.slider--single__slide')).length -1;
        slider.css('right', setRightOffset(slider.width() - sliderWidth, pxToSlide));
    }

    if(_autoplay)
        sliderAutoplay(_timer); // reset autoplay timer
}

function sliderSetPage(page, slide) {
    var slider = jQuery('.slider--container');
    var pxToSlide = parseInt(jQuery('.slider--single__slide').outerWidth());
    var sliderWidth = jQuery("#Slider").width();
    sliderPosition = slide;

    /*
        This line prevents slider from displaying empty space instead of slide that may not exist. This could happen
        when we have 10 slides on a large monitor, pagination would display 4slides on page 1, 4slides on page 2 and
        2 slides on page 3 - with empty space for 2 slides that do not exist. This way Slider will display 2 slides from
        previous page and 2 slides from last page. This can be easily changed by commenting line below this comment and
        uncommenting the one under it.
     */
    slider.css('right', setRightOffset(slider.width() - sliderWidth, pxToSlide));
    // slider.css('right', slide*pxToSlide);

    if(_autoplay)
        sliderAutoplay(_timer); // reset autoplay timer
}

function sliderAutoplay(time) {
    sliderInterval = null;

    sliderAutoplay = function() {
        clearInterval(sliderInterval);

        sliderInterval = setInterval(function() {
            SlideRight();
        }, time);
    };

    sliderAutoplay();
}

jQuery(document).ready(function(){
    SliderInit(true, 5000);

    jQuery(window).resize(function () {
        setTimeout(function() {
            SliderInit(_autoplay, _timer);
            if(_autoplay)
                sliderAutoplay(_timer); // reset autoplay timer
        }, 500);
    });
});