<?php
$contact_logo = wp_get_attachment_url(get_post_meta($post->ID, 'contact_logo', true));
$contact_address = get_post_meta($post->ID, 'contact_address', true);
$contact_map = get_post_meta($post->ID, 'contact_map', true);
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div class="page--contact__content">
        <?php
        the_content();
        ?>
    </div>
    <div class="page--contact__info">
        <div class="page--contact__description">
            <ul>
                <li class="page--contact__logo"><img src="<?php echo $contact_logo;?>" alt="Company logo" title="Company logo"></li>
                <li class="page--contact__address"><?php echo apply_filters('the_content', $contact_address);?></li>
            </ul>
        </div>
        <div class="page--contact__googlemap">
            <?php if( !empty($contact_map) ) { ?>
                <div class="acf-map">
                    <div class="marker" data-lat="<?php echo $contact_map['lat']; ?>" data-lng="<?php echo $contact_map['lng']; ?>">
                        <p class="address"><?php echo $contact_map['address']; ?></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</article>