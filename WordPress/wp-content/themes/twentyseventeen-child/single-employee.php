<?php
/*
 * Template file for single Employee CPT post
 */

get_header(); ?>

<div class="wrap">
    <div class="content-area">
        <main id="main" class="site-main" role="main">
            <?php
            while ( have_posts() ) : the_post();
                get_template_part( 'template-parts/employee/content', 'single' );
            endwhile;
            ?>
        </main>
    </div>
</div>

<?php get_footer();