<?php 

function motownchristmas_load_scripts() {
    wp_enqueue_style( 'motownchristmas-style', get_stylesheet_uri(), array(), filemtime( get_template_directory() . '/style.css' ), 'all' );

    // enqueuing fonts
    wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700;900&display=swap', array(), null );
}

add_action( 'wp_enqueue_scripts', 'motownchristmas_load_scripts' );

?>