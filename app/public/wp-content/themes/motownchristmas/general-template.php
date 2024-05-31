<?php 
/*
Template name: General Template
*/
?>

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
                                        <h1 class="pageTitle"><?php the_title(); ?></h1>
                                        <?php the_content(); ?>
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