<?php 

function motownchristmas_load_scripts() {
    wp_enqueue_style( 'motownchristmas-style', get_stylesheet_uri(), array(), '1.0', 'all' );
}

add_action( 'wp_enqueue_scripts', 'motownchristmas_load_scripts' );

?>