<?php
/*
 * Template name: Contact
 */

get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<?php
			while ( have_posts() ) : the_post();
                get_template_part( 'template-parts/content', 'page-contact' );
            endwhile;
			?>
        </main>
    </div>
</div>

<?php
get_footer();