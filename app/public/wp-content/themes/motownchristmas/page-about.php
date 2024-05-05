<?php get_header(); ?>

<div id="content" class="container site-content">

    <!-- Header for the about page -->
    <div id="about-header">
        <!-- Image for the header -->
        <section id="about-header-img">
            <?php 
                if( is_active_sidebar( 'about-header-img' )){
                    dynamic_sidebar( 'about-header-img' );
                }
            ?>
        </section>
        <!-- Text for the header -->
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
            <section class="about-performer" id="performer-1">
                <?php 
                    if( is_active_sidebar( 'performer-1' )){
                        dynamic_sidebar( 'performer-1' );
                    }
                ?>
            </section>
            <section class="about-performer" id="performer-2">
                <?php 
                    if( is_active_sidebar( 'performer-2' )){
                        dynamic_sidebar( 'performer-2' );
                    }
                ?>
            </section>
        </div>
        <div id="performer-column-2" class="performer-column">
            <section class="about-performer" id="performer-3">
                <?php 
                    if( is_active_sidebar( 'performer-3' )){
                        dynamic_sidebar( 'performer-3' );
                    }
                ?>
            </section>
        </div>
        <div id="performer-column-3" class="performer-column">
            <section class="about-performer" id="performer-4">
                <?php 
                    if( is_active_sidebar( 'performer-4' )){
                        dynamic_sidebar( 'performer-4' );
                    }
                ?>
            </section>
            <section class="about-performer" id="performer-5">
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