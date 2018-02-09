<?php

if(function_exists('register_field_group')) {
    register_field_group(array(
        'id' => 'contact_fields',
        'title' => 'Contact page fields',
        'fields' => array(
            array(
                'key' => 'field_contact_logo',
                'label' => 'Contact logo',
                'name' => 'contact_logo',
                'type' => 'image',
                'save_format' => 'id',
                'library' => 'all',
                'instructions' => 'Please select logo'
            ),
            array(
                'key' => 'field_contact_address',
                'label' => 'Contact address',
                'name' => 'contact_address',
                'type' => 'wysiwyg',
                'toolbar' => 'full',
                'media_upload' => 'yes',
                'instructions' => 'Please enter your address'
            ),
            array(
                'key' => 'field_contact_map',
                'label' => 'Contact map',
                'name' => 'contact_map',
                'type' => 'google_map',
                'center_lat' => '51.9377277', //you can change latitude here
                'center_lng' => '15.4417374', //you can change longitude here
                'zoom' => '12', //you can change zoom value here
                'height' => '300', //you can change map height height here
            )
        ),
        'location' => array(
            array(
                array(
                    'param' => 'page_template',
                    'operator' => '==',
                    'value' => 'page-contact.php'
                )
            )
        ),
        'options' => array(
            'position' => 'normal',
            'layout' => 'no_box',
            'hide_on_screen' => array (
            ),
        ),
        'menu_order' => 0,
    ));
}

//api key for WordPress' backend
function gmap_api_key( $api ){
    $api['key'] = 'AIzaSyA1rTOh-zkEY2lKLFuRWBA4GclWjKsroeE'; // you can change api key here
    return $api;
}
add_filter('acf/fields/google_map/api', 'gmap_api_key');

?>