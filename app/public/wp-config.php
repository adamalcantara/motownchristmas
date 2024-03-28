<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '?qn)`eNQ<3S$&c4.93FCS3vq]:S!ttRTnPwqCQ2slH)p)e7Ly6O;6#Ty[*:Iv[{V' );
define( 'SECURE_AUTH_KEY',   '^@cB@K=}x`7{~h8zcE0`y|=DtBT<Uc$[8J!!f+,h%&Qe4*)v+xy/lk*uz*8qh.ts' );
define( 'LOGGED_IN_KEY',     '6zXNC,2|62ZbG$R3@U?gM]b28+J-PM/Yhk=]yTgI^w)U3<E.Z6GkM?CM K|6WIK(' );
define( 'NONCE_KEY',         'tN~2i$(.=&[[2Dgv+*FV}mP[7KL|cKj!;cI>YmjXA&2hnJF@&ed3I3wXGccoboif' );
define( 'AUTH_SALT',         'T(,46@yy XdM>8RoD;]tIn~,^eE>00TWq[`C4@%?G#tK]8}G[):Rj4.hm]VJH4Qq' );
define( 'SECURE_AUTH_SALT',  'f]QX=y6YyYzi`IXa.DDOax,n32N*Cc?JNO,8mN#Y4b1k9z!mE[n|={1Hc :bVk;C' );
define( 'LOGGED_IN_SALT',    '$=7/gP&LM.=3Bf)X4LJ_`tejEzlUI6nLFC2oe0_gAX@Z^IiEK0_1<$ W5M0dU)b7' );
define( 'NONCE_SALT',        'lT{)bCIFaoZ.mjVV7xeU]Jr&$|<C]mU=+l$4F[}l?{p+fD8@;#BY`t]-P>+F=F9T' );
define( 'WP_CACHE_KEY_SALT', '_TI:tUHkF,HuZcvO&4_N)/h]5(BE=!c#VO7S/FsZ}qi2<#:M_=]2=,9?R<wrR/&b' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
