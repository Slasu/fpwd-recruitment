<?php
$employee_post_meta = get_post_meta($post->ID);
$employee_image = wp_get_attachment_url($employee_post_meta[EmployeeAcfConfig::getValueByKey('image')][0]);
$employee_posts = get_field('field_employee_posts');
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div class="entry-content">
        <?php the_content(); ?>

        <div class="single--employee__description">
            <div class="employee--basic__info">
                <ul class="employee--image">
                    <li><img src="<?php echo $employee_image; ?>" alt="Employee image" title="Employee image" /></li>
                </ul>
                <ul class="employee--informations">
                    <li><strong><?php echo __('Name', 'fpwd'); ?>:</strong>
                        <?php echo $employee_post_meta[EmployeeAcfConfig::getValueByKey('name')][0]; ?>
                    </li>
                    <li><strong><?php echo __('Email', 'fpwd'); ?>:</strong>
                        <a href="mailto:<?php echo $employee_post_meta[EmployeeAcfConfig::getValueByKey('email')][0]; ?>">
                            <?php echo $employee_post_meta[EmployeeAcfConfig::getValueByKey('email')][0]; ?>
                        </a>
                    </li>
                    <li><strong><?php echo __('WWW Address', 'fpwd'); ?>:</strong>
                        <?php echo $employee_post_meta[EmployeeAcfConfig::getValueByKey('www')][0]; ?>
                    </li>

                    <?php
                    /*
                     * Once again, as I wrote in post_type_employee - this needs a solid refactor. Use ACF Pro with group fields
                     * or field repeater, or rewrite it using add_meta_box instead of ACF and store in 1 field. Maybe there
                     * is some other solution with ACF free version that I'm not thinking of right now.
                     */
                    ?>
                    <?php if(isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social1label')][0])
                        && isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social1url')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social1label')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social1url')][0])) {
                    ?>
                        <li><?php echo '<a href="' . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social1url')][0] . '" />'
                                . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social1label')][0] . '</a>'; ?>
                        </li>
                    <?php } ?>

                    <?php if(isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social2label')][0])
                        && isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social2url')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social2label')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social2url')][0])) {
                    ?>
                        <li><?php echo '<a href="' . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social2url')][0] . '" />'
                                . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social2label')][0] . '</a>'; ?>
                        </li>
                    <?php } ?>

                    <?php if(isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social3label')][0])
                        && isset($employee_post_meta[EmployeeAcfConfig::getValueByKey('social3url')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social3label')][0])
                        && !empty($employee_post_meta[EmployeeAcfConfig::getValueByKey('social3url')][0])) {
                    ?>
                        <li><?php echo '<a href="' . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social3url')][0] . '" />'
                                . $employee_post_meta[EmployeeAcfConfig::getValueByKey('social3label')][0] . '</a>'; ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <div class="single--employee__posts">
            <h2><?php echo __('Employee related posts', 'fpwd'); ?></h2>
            <?php
            if(isset($employee_posts) && !empty($employee_posts))
                foreach($employee_posts as $post):
                    setup_postdata($post);?>
                    <ul class="employee--related__post">
                        <?php if(has_post_thumbnail()) { ?>
                            <li class="employee--post__thumbnail"><?php the_post_thumbnail();?></li>
                        <?php } ?>
                        <li class="employee--post__details">
                            <?php the_title( sprintf( '<h3 class="entry-title"><a href="%s">', esc_url( get_permalink() ) ), '</a></h3>' ); ?>
                            <p>
                                <?php echo get_the_excerpt(); ?>
                            </p>
                            <a href="<?php the_permalink($post->ID); ?>" class="fpwd-read-more" title="<?php the_title();?>"><?php echo __('Read more', 'fpwd'); ?></a>
                        </li>
                    </ul>
                <?php endforeach; ?>
        </div>
    </div>
</article><!-- #post-## -->
