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

            </section>
            <section class="about-performer">
                
            </section>
        </div>
        <div id="performer-column-2" class="performer-column">
            <section class="about-performer">
            
            </section>
        </div>
        <div id="performer-column-3" class="performer-column">
            <section class="about-performer">
            
            </section>
            <section class="about-performer">
                
            </section>
        </div>
    </div>

</div>
    
    
    

<?php get_footer(); ?>