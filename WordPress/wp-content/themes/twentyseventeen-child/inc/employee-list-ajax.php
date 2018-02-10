<?php
/*
 * Functions for employee list ajax loading
 */

function displayEmployeeList() {
    $args = array(
        'post_type' => 'employee',
        'post_status' => 'publish',
        'posts_per_page' => -1
    );
    $qry = new WP_Query($args);

    if($qry->have_posts()) {
        $templateHTML = '<h2>' . __("Our employees", "fpwd") . '</h2><div class="employee--list__inner">';
        ob_start();

        while($qry->have_posts()) : $qry->the_post();
            get_template_part('template-parts/employee/content', 'employee-list-item');
        endwhile;

        $templateHTML .= ob_get_contents();
        ob_end_clean();
        $templateHTML .= '</div>';

        echo json_encode($templateHTML);
        die();
    }

    echo '';
    die();
}
add_action('wp_ajax_displayEmployeeList', 'displayEmployeeList');
add_action('wp_ajax_nopriv_displayEmployeeList', 'displayEmployeeList');