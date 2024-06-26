<?php 

function motownchristmas_load_scripts() {
    wp_enqueue_style( 'motownchristmas-style', get_stylesheet_uri(), array(), filemtime( get_template_directory() . '/style.css' ), 'all' );

    // enqueuing fonts
    wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700;900&display=swap', array(), null );

    // enqueue scripts
    wp_enqueue_script( 'dropdown', get_template_directory_uri() . '/js/dropdown.js', array(), '1.0', true );
}

add_action( 'wp_enqueue_scripts', 'motownchristmas_load_scripts' );

function motownchristmas_config() {
    register_nav_menus(
        array(
            'motownchristmas_main_menu' => 'Main Menu'
        )
    );

    add_theme_support( 'custom-logo', array(
        'width' => 50,
        'height' => 50,
        'flex-height' => true,
        'flex-width' => true
    ) );
    
    // make embedded elements responsive - this is for the YouTube video
    add_theme_support( 'responsive-embeds' );
}

add_action( 'after_setup_theme', 'motownchristmas_config', 0);

add_action( 'widgets_init', 'motownchristmas_sidebars', 0 );
function motownchristmas_sidebars(){
    register_sidebar(
        array(
            'name' => 'Home Banner',
            'id' => 'home-banner',
            'description' => 'You can place a banner at the top of the homepage',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Home Text',
            'id' => 'home-text',
            'description' => 'You can put some text here on the homepage',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Home Below Content',
            'id' => 'home-below-content',
            'description' => 'You can put some text here below the homepage content',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );

    // ABOUT PAGE SIDEBARS
    // HEADER
    register_sidebar(
        array(
            'name' => 'About Header Image',
            'id' => 'about-header-img',
            'description' => 'This is for the header of the about page',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'About Header',
            'id' => 'about-header',
            'description' => 'This is for the header of the about page',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );

    // GRID
    register_sidebar(
        array(
            'name' => 'Performer Grid 1',
            'id' => 'performer-1',
            'description' => 'This is one of the performer grid boxes',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Performer Grid 2',
            'id' => 'performer-2',
            'description' => 'This is one of the performer grid boxes',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Performer Grid 3',
            'id' => 'performer-3',
            'description' => 'This is one of the performer grid boxes',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Performer Grid 4',
            'id' => 'performer-4',
            'description' => 'This is one of the performer grid boxes',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
    register_sidebar(
        array(
            'name' => 'Performer Grid 5',
            'id' => 'performer-5',
            'description' => 'This is one of the performer grid boxes',
            'before_widget' => '<div class="widget-wrapper">',
            'after_widget' => '</div>',
            'before_title' => '<h4 class="widget-title"',
            'after_title' => '</h4>'
        )
    );
}
?>