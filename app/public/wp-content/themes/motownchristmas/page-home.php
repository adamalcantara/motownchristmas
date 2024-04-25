<?php get_header(); ?>

        <!-- Site content box -->
        <div id="content" class="container site-content">

                <!-- Homepage sections -->
                    <section class="home-banner">
                        <div id="home-banner-img">
                            <?php 
                                if( is_active_sidebar( 'home-banner' )){
                                    dynamic_sidebar( 'home-banner' );
                                }
                            ?>
                        </div>
                    </section>
                    <section class="home-text">
                        <div id="home-text">
                            <?php 
                                if( is_active_sidebar( 'home-text' )){
                                    dynamic_sidebar( 'home-text' );
                                }
                            ?>
                        </div>
                    </section>
                        <?php 
                            if( have_posts() ):
                                while( have_posts() ) : the_post();
                                ?>
                                    <article id="home">
                                        <?php the_content(); ?>
                                    </article>
                                <?php
                                endwhile;
                        else:
                            ?>
                            <p>Nothing yet to be displayed!</p>
                        <?php endif;
                        ?>
                    <section class="home-below-content">
                        <div id="home-below-text">
                            <?php 
                                if( is_active_sidebar( 'home-below-content' )){
                                    dynamic_sidebar( 'home-below-content' );
                                }
                            ?>
                        </div>
                    </section>

        </div>
        

<?php get_footer(); ?>