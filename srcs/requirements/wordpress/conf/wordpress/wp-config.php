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
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wp' );

/** Database password */
define( 'DB_PASSWORD', 'wppassword' );

/** Database hostname */
define( 'DB_HOST', 'db:3306' );

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
define( 'AUTH_KEY',          'T2)xlv~Y5qvoNBQwZ>%bf`!hvW5frjHH_nXWMER03J1WcxrEE.b0F.vHyTv2xDr*' );
define( 'SECURE_AUTH_KEY',   'hM3B/4c7@l`JfYGfuv`mj5cPBRzL=myWO6eH:N`l*#r%FsUx`fB-LyTf]bT:3Bkl' );
define( 'LOGGED_IN_KEY',     'ai9sfyRm?S!K-`>nQ#z^#Owxe!h`3uYvM/m?8|5AIi>cwV0YSsc4L()29|.b9^U5' );
define( 'NONCE_KEY',         'C^@)^jW#FD[p3.f`)M}a68d~28gu=YbpvhdC(UC:Ld3sid&nuAfrM)RQ.QkoK7B=' );
define( 'AUTH_SALT',         's,g(jM@6ReUbjQ__KUJ+P81ioww<bGzQ!]478Vy[*,Z[< vVR)+(OSL0Tz$u.IVL' );
define( 'SECURE_AUTH_SALT',  'i:$M5_9V1c1k=8PmIF#V>S1|>5/i8b]rsOgc.ac.h.fm#PX,-6~c$$6jI5B5.pXh' );
define( 'LOGGED_IN_SALT',    ':lL,pk?mxy_hVb6inoq$yAmvSg2b4J2~mE[Ki14oBQ>hL9O0Fupx2`*ju7(Gp>6}' );
define( 'NONCE_SALT',        '=ZGKy7%$Srig{z@PQJ[F;Qcujy??c%j>bc>)cucIDY!JlBjG$nx=G=P,ZH1<{%IA' );
define( 'WP_CACHE_KEY_SALT', 'L@%DTS{mym7R%X){5GroWR@kog_$5re{p<G7o)G`W.)y,^A_.#nG4#);;6-;:>&2' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
