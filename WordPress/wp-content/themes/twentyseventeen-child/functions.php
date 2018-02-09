<?php

function fpwd_enqueue_scripts() {
    $parent = 'parent-style';
    wp_enqueue_style( $parent, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style('fpwd-style', get_stylesheet_directory_uri() . '/style.css', array($parent));

    //include googlemaps only on contact template
    if(is_page_template('page-contact.php')) {
        wp_enqueue_script('acf-gmap', get_stylesheet_directory_uri() . '/js/gmap.js', array('jquery'), false, true);
        wp_enqueue_script( 'gmap-api', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyA1rTOh-zkEY2lKLFuRWBA4GclWjKsroeE');
    }
}
add_action( 'wp_enqueue_scripts', 'fpwd_enqueue_scripts');

//There is already enqueued child style in previous function with it's own handle name, so default loaded style is not needed anymore
function fpwd_dequeue_twentyseventeen_child() {
    wp_dequeue_style('twentyseventeen-style');
    wp_deregister_style('twentyseventeen-style');
}
add_action('wp_enqueue_scripts', 'fpwd_dequeue_twentyseventeen_child', 20);

//remove emoji, I assume it's not needed and takes additional, unnecessary request/load time
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'wp_print_styles', 'print_emoji_styles' );

include_once(dirname(__FILE__) . '/includes/acf-contact.php');