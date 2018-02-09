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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'fpwd_recruitment');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '8![{#b*&a[I44JdjZ|9q?lz~<`D 0VXKmYkTtJJl .YLjQ4s:dqBS!P+[TfEXBNx');
define('SECURE_AUTH_KEY',  'P*<l!Hy[N~a(Zdj*&jNq+(pCFCXT,Lv=aS251Fb#`#!ANI7.WIOT#A>%OalUe3;]');
define('LOGGED_IN_KEY',    'N,oRD3hOx5Tsj!y=H,;TT?s77k9@S8J_5xUIUC`h*L}9bbG~SP<cF,]e(@;Diti ');
define('NONCE_KEY',        'fru)sMwRo`FKth%m*-8[ldaWzicSU_#1!?>xYVTQdhTRAZG;e]RcR0/^6ZTtf][j');
define('AUTH_SALT',        '~Ab/7?cbRTw@t1Q%f-%*-J]HM~8F!?Vza7[pK^Mjg#QM#2(}jZWNmhTEu*`@wU%x');
define('SECURE_AUTH_SALT', 'pJXY#zr?HJIQHk9PCK6Pn+GbEKc1W,s,c!eB}kCoa bLwMt>B#Qt9+{7p->_evHV');
define('LOGGED_IN_SALT',   'XxN]{d,0,EZ`M!]nD?8k,w]mm:&zo4L*C/ T=XG:yf <@HU^,wMI~]K!qu.o/!:%');
define('NONCE_SALT',       'Tqz~u{QN_IeQv5O4K=e72mtB:t1He9l82(dV:5;:jGy?)xCv7vs~mQyMqhEoVnxJ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'fpwd_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
