<?php get_header(); ?>

<div id="content" class="container site-content">

    <div id="about-header">
        <section id="about-header-img">
            <?php 
                if( is_active_sidebar( 'about-header-img' )){
                    dynamic_sidebar( 'about-header-img' );
                }
            ?>
        </section>
        <section id="about-header-text">
            <?php 
                if( is_active_sidebar( 'about-header' )){
                    dynamic_sidebar( 'about-header' );
                }
            ?>
        </section>
    </div>
    <div class="performers-grid">
        <div id="performer-column-1" class="performer-column">
            <section class="about-performer">
                <?php 
                    if( is_active_sidebar( 'performer-1' )){
                        dynamic_sidebar( 'performer-1' );
                    }
                ?>
            </section>
            <section class="about-performer">
                <?php 
                    if( is_active_sidebar( 'performer-2' )){
                        dynamic_sidebar( 'performer-2' );
                    }
                ?>
            </section>
        </div>
        <div id="performer-column-2" class="performer-column">
            <section class="about-performer">
                <?php 
                    if( is_active_sidebar( 'performer-3' )){
                        dynamic_sidebar( 'performer-3' );
                    }
                ?>
            </section>
        </div>
        <div id="performer-column-3" class="performer-column">
            <section class="about-performer">
                <?php 
                    if( is_active_sidebar( 'performer-4' )){
                        dynamic_sidebar( 'performer-4' );
                    }
                ?>
            </section>
            <section class="about-performer">
                <?php 
                    if( is_active_sidebar( 'performer-5' )){
                        dynamic_sidebar( 'performer-5' );
                    }
                ?>
            </section>
        </div>
    </div>

</div>
    
    
    

<?php get_footer(); ?>