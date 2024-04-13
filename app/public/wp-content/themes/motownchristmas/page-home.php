<?php get_header(); ?>

        <!-- Site content box -->
        <div id="content" class="container site-content">
            

                <!-- Homepage sections -->
                    

                        <?php 
                            if( have_posts() ):
                                while( have_posts() ) : the_post();
                                ?>
                                    <article id="home">
                                        <!-- <h1><?php the_title(); ?></h1> -->
                                        <?php the_content(); ?>
                                    </article>
                                <?php
                                endwhile;
                        else:
                            ?>
                            <p>Nothing yet to be displayed!</p>
                        <?php endif;
                        ?>

                    

        </div>
        <section class="home-text">
            <div id="home-text">
                <?php 
                    if( is_active_sidebar( 'home-text' )){
                        dynamic_sidebar( 'home-text' );
                    }
                ?>
            </div>
        </section>

<?php get_footer(); ?>