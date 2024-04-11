<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Important function to make everything including loading stylesheets work -->
    <?php wp_head(); ?>
</head>

<!-- Body section -->
<body <?php body_class(); ?>>
    <div id="page" class="container site">
        <!-- Header section -->
        <header id="header">
        Logo
        <!-- Menu goes here -->
            <nav id="main-menu">
                <?php wp_nav_menu( array( 'theme_location' => 'motownchristmas_main_menu', 'depth' => 2 ) ); ?>
            </nav>
        </header>