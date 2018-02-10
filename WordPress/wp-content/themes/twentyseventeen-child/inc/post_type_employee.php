<?php
//Register Employee
function employee() {
    $labels = array(
        'name'                  => _x( 'Employee', 'Post Type General Name', 'fpwd' ),
        'singular_name'         => _x( 'Employee', 'Post Type Singular Name', 'fpwd' ),
        'menu_name'             => __( 'Employees', 'fpwd' ),
        'name_admin_bar'        => __( 'Employee', 'fpwd' ),
        'all_items'             => __( 'All employees', 'fpwd' ),
        'add_new_item'          => __( 'Add new employee', 'fpwd' ),
        'add_new'               => __( 'Add employee', 'fpwd' ),
        'new_item'              => __( 'New employee', 'fpwd' ),
        'edit_item'             => __( 'Edit employee', 'fpwd' ),
        'update_item'           => __( 'Update employee', 'fpwd' ),
        'view_item'             => __( 'View employee', 'fpwd' ),
        'view_items'            => __( 'View employees', 'fpwd' ),
        'search_items'          => __( 'Search employees', 'fpwd' ),
        'not_found'             => __( 'No employees found', 'fpwd' ),
        'not_found_in_trash'    => __( 'No employees found in trash', 'fpwd' ),
    );

    $args   = array(
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'revisions'),
        'taxonomies'          => array(),
        'hierarchical'        => false,
        'public'              => true,
        'publicly_queryable'  => true,
        'query_var'           => true,
        'rewrite'             => array( 'slug' => 'employee' ),
        'show_ui'             => true,
        'show_in_menu'        => true,
        'menu_position'       => 5,
        'menu_icon'           => 'dashicons-images-alt2',
        'show_in_admin_bar'   => true,
        'show_in_nav_menus'   => true,
        'can_export'          => true,
        'has_archive'         => true,
        'exclude_from_search' => false,
        'capability_type'     => 'post'
    );

    register_post_type( 'employee', $args );
};
add_action( 'init', 'employee', 0 );

//Displays Employee name in All Employees WordPress backend page. Just an example, other columns can be added too.
function add_employee_name_column($defaults) {
    $defaults['employee_name'] = 'Employee name';
    return $defaults;
}

function display_employee_name_column($column_name, $post_ID) {
    if ($column_name == 'employee_name') {
        $employee_name = get_post_meta($post_ID, EmployeeAcfConfig::getValueByKey('name'), true);
        if ($employee_name) {
            echo $employee_name;
        }
    }
}
add_filter('manage_employee_posts_columns', 'add_employee_name_column');
add_action('manage_employee_posts_custom_column', 'display_employee_name_column', 10, 2);

//This could probably go to a separate file, but I want to keep it in one place for now.
if(function_exists('register_field_group')) {
    require_once('EmployeeAcfConfig.php');
    register_field_group(array(
        'id' => 'employee_fields',
        'title' => 'Additional employee informations',
        'fields' => array(
            array(
                'key' => 'field_employee_image',
                'label' => __('Employee image', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('image'),
                'type' => 'image',
                'save_format' => 'id',
                'library' => 'all',
                'instructions' => __('Select employee image', 'fpwd'),
            ),
            array(
                'key' => 'field_employee_name',
                'label' => __('Employee name', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('name'),
                'type' => 'text',
                'placeholder' => __('Employee name', 'fpwd'),
                'formatting' => 'html',
                'instructions' => __('Enter employee name', 'fpwd'),
            ),
            array(
                'key' => 'field_employee_email',
                'label' => __('Employee email', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('email'),
                'type' => 'email',
                'placeholder' => __('Employee email', 'fpwd'),
                'instructions' => __('Enter employee email', 'fpwd'),
            ),
            array(
                'key' => 'field_employee_www',
                'label' => __('Employee www', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('www'),
                'type' => 'text',
                'placeholder' => __('Employee www', 'fpwd'),
                'formatting' => 'html',
                'instructions' => __('Enter employee www address', 'fpwd'),
            ),
            /*
             * Fields for social links need to be refactored. Unfortunatelly, group fields/repeater is only available in
             * ACF Pro version - not the one I am using right now. I would prefer to create my own meta boxes for this post type, with
             * add_meta_box function. I believe it would be more flexible and readable than creating another 6 ACF fields.
             */
            array(
                'key' => 'field_employee_first_social_label',
                'label' => __('Employee first social link label', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social1label'),
                'type' => 'text',
                'placeholder' => __('Employee social link label', 'fpwd'),
                'instructions' => __('Enter employee social link label', 'fpwd')
            ),
            array(
                'key' => 'field_employee_first_social_url',
                'label' => __('Employee first social link address', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social1url'),
                'type' => 'text',
                'placeholder' => __('Employee social link address', 'fpwd'),
                'instructions' => __('Enter employee social link address', 'fpwd')
            ),
            array(
                'key' => 'field_employee_second_social_label',
                'label' => __('Employee second social link label', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social2label'),
                'type' => 'text',
                'placeholder' => __('Employee social link label', 'fpwd'),
                'instructions' => __('Enter employee social link label', 'fpwd')
            ),
            array(
                'key' => 'field_employee_second_social_url',
                'label' => __('Employee second social link address', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social2url'),
                'type' => 'text',
                'placeholder' => __('Employee social link address', 'fpwd'),
                'instructions' => __('Enter employee social link address', 'fpwd')
            ),
            array(
                'key' => 'field_employee_third_social_label',
                'label' => __('Employee third social link label', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social3label'),
                'type' => 'text',
                'placeholder' => __('Employee social link label', 'fpwd'),
                'instructions' => __('Enter employee social link label', 'fpwd')
            ),
            array(
                'key' => 'field_employee_third_social_url',
                'label' => __('Employee third social link address', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('social3url'),
                'type' => 'text',
                'placeholder' => __('Employee social link address', 'fpwd'),
                'instructions' => __('Enter employee social link address', 'fpwd')
            ),
            array (
                'key' => 'field_employee_posts',
                'label' => __('Select employees posts', 'fpwd'),
                'name' => EmployeeAcfConfig::getValueByKey('relatedPosts'),
                'type' => 'relationship',
                'return_format' => 'id',
                'post_type' => array ( 'post' ),
                'taxonomy' => array ( 'all' ),
                'filters' => array ( 'search' ),
                'result_elements' => array ( 'post_title' ),
                'max' => '',
            ),
        ),
        'location' => array (
            array (
                array (
                    'param' => 'post_type',
                    'operator' => '==',
                    'value' => 'employee',
                    'order_no' => 0,
                    'group_no' => 0,
                ),
            ),
        ),
        'options' => array (
            'position' => 'side',
            'layout' => 'box',
            'hide_on_screen' => array (
            ),
        ),
        'menu_order' => 0,
    ));
}