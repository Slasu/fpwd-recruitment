<?php
/*
 * Separate template for Employee list item to make it reusable, only needs wrapper
 */

$image = wp_get_attachment_url(get_post_meta($post->ID, EmployeeAcfConfig::getValueByKey('image'), true));
$name = get_post_meta($post->ID, EmployeeAcfConfig::getValueByKey('name'), true);
?>
<div class="employee--list__item">
    <img src="<?php echo $image;?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" />
    <span><?php echo $name; ?></span>
</div>