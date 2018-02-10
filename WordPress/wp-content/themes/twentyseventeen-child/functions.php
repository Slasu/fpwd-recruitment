<?php

function fpwd_enqueue_scripts() {
    $parent = 'parent-style';
    wp_enqueue_style( $parent, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style('fpwd-style', get_stylesheet_directory_uri() . '/style.css', array($parent));
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

include_once( dirname( __FILE__ ) . '/inc/post_type_employee.php');

function remove_sidebar_bodyclass_from_employees( $classes ) {
    if ( is_singular('employee') ) {
        $classes = array_diff($classes, ["has-sidebar"]);
    }

    return $classes;
}
add_filter( 'body_class', 'remove_sidebar_bodyclass_from_employees', 999);

function remove_more_link_from_excerpt() {
    return '...';
}
add_filter('excerpt_more', 'remove_more_link_from_excerpt', 99);