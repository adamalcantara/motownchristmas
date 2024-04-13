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

                    <section class="video">
                   
                    </section>

        </div>

<?php get_footer(); ?>