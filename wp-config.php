<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'first_db' );

/** MySQL database username */
define( 'DB_USER', 'wp_user' );

/** MySQL database password */
define( 'DB_PASSWORD', '123456' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost:8889' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'JB-.3p2[Tt&)+lv30?-djf`d=L>Hw`%sWR_9.l;z8dvHX7SjkK_PZ=RvvU37qnS.' );
define( 'SECURE_AUTH_KEY',  '@7C%S)cS_VHcOHtR}HCO;J$zAJaSWTf_$:Hq}n2s7D*7W6@X026>8BGfQY0ym7$u' );
define( 'LOGGED_IN_KEY',    'K#6mQi^*/+qXc~ CSbq-wl+W+6v&LsZ%uec`3r>dm~RwGqbLX~pKs1q1Go8c ?:~' );
define( 'NONCE_KEY',        ')?5F{Z9DH-DL8EPbg^S[3GVmC`$+fCxLHL.JJ!*R>{>MD^eVk|h0&3B#.L=]-0Q@' );
define( 'AUTH_SALT',        '!}<F`&Z-XF&P3D3=j/0;OJ$-*58(9tIst=!l:F^IFm%;dlQfsuYY/)-:YAvmtWyr' );
define( 'SECURE_AUTH_SALT', ' dlVID|?FOwMMOga&~a|6KeHR}g@ODn+tIz4F0usl7vXb3@.|sbyO(`Hk!=6W]2(' );
define( 'LOGGED_IN_SALT',   'F/>|*/d`FT-x9mzUDx_;KS*uJ9HXSus5iQ~=f<szi$@3V8GcFavlVhc$M)L_aKFE' );
define( 'NONCE_SALT',       '&Y8{ayY-e(_e*+Z/fXb;4twz}X4XdO5<X]X`EJr/f2<*oCVP@L^SS}@}5 #QZP@|' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
