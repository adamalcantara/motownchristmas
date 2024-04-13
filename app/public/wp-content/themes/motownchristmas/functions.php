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
}

add_action( 'after_setup_theme', 'motownchristmas_config', 0)

?>