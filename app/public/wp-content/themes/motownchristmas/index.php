<?php get_header(); ?>

        <!-- Site content box -->
        <div id="content" class="container site-content">
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <section class="intro">
                        <?php 
                            if( have_posts() ):
                                while( have_posts() ) : the_post();
                                ?>
                                    <article>
                                        <h2><?php the_title(); ?></h2>
                                        <div class="meta-info">
                                            <p>Posted in <?php echo get_the_date(); ?> by <?php the_author_posts_link(); ?></p>
                                            <p>Categories: <?php the_category( ' ' ); ?></p>
                                            <p>Tags: <?php the_tags( '', ', '); ?></p>
                                        </div>
                                        
                                        <a href="<?php the_excerpt(); ?>">Buy Tickets</a>
                                    </article>
                                <?php
                                endwhile;
                        else:
                            ?>
                            <p>Nothing yet to be displayed!</p>
                        <?php endif;
                        ?>
                    </section>
                </main>
            </div>
        </div>

<?php get_footer(); ?>