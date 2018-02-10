<?php
/*
 * Helper class for Employee ACF fields names
 */
class EmployeeAcfConfig {
    private static $config = array(
        'image' => 'employee_image',
        'name' => 'employee_name',
        'email' => 'employee_email',
        'www' => 'employee_www',
        'social1label' => 'employee_first_social_link_label',
        'social1url' => 'employee_first_social_link_url',
        'social2label' => 'employee_second_social_link_label',
        'social2url' => 'employee_second_social_link_url',
        'social3label' => 'employee_third_social_link_label',
        'social3url' => 'employee_third_social_link_url',
        'relatedPosts' => 'field_employee_posts'
    );

    public static function getValueByKey($key) {
        return self::$config[$key];
    }
}