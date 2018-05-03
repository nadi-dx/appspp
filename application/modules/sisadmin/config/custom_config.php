<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| CI Zaky Yudha Configuration
| -------------------------------------------------------------------------
| This file lets you define default values to be passed into views
| when calling MY_Controller's render() function.
|
| See example and detailed explanation from:
| 	/application/config/ci_bootstrap_example.php
*/

$config['ci_kusnadi'] = array(

	// Site name
	'site_name' => 'Admin Panel',

	// Default page title prefix
	'page_title_prefix' => '',

	// Default page title
	'page_title' => '',

	// Default meta data
	'meta_data'	=> array(
		'author'		=> 'Kusnadi & Nazih',
		'description'	=> '',
		'keywords'		=> ''
	),

	// Default scripts to embed at page head or end
	'scripts' => array(
		'head'	=> array(
			'assets/js/jquery-1.10.2.js',
			'assets/js/bootstrap.min.js',
			'assets/js/wow.js',
			'assets/js/jquery.easing.min.js',
			'assets/js/custom.js'
		),
		'foot'	=> array(
		),
	),

	// Default stylesheets to embed at page head
	'stylesheets' => array(
		'screen' => array(
			'assets/css/bootstrap.min.css',
			'assets/css/ionicons.min.css',
			'assets/css/typicons.min.css',
			'assets/css/animate.min.css',
			'assets/css/login.css'
		)
	),

	// Default CSS class for <body> tag
	'body_class' => '',

	// Multilingual settings
	'languages' => array(
	),

	// Menu items sidebar
	'menu' => array(
		'home' => array(
			'name'		=> 'Home',
			'url'		=> '',
			'icon'		=> 'fa fa-home',
		),
		'infografis' => array(
			'name'		=> 'Infografis',
			'url'		=> 'infografis',
			'icon'		=> 'fa fa-file-image-o',
		),
		'settings' => array(
			'name'		=> 'Settings',
			'url'		=> '#',
			'icon'		=> 'fa fa-cog',
			'children'  => array(
				'Text settings'	=> 'settings/text',
				'Social media'	=> 'settings/social_media',
				'About Setting' => 'about/create',
				'Background Dashboard' => 'background'
			)
		),
		// 'blogs' => array(
		// 	'name'		=> 'Blogs',
		// 	'url'		=> 'blogs',
		// 	'icon'		=> 'fa fa-pencil',
		// ),
		'user' => array(
			'name'		=> 'Users',
			'url'		=> 'user',
			'icon'		=> 'fa fa-users',
			'children'  => array(
				'List'			=> 'user',
				'Create'		=> 'user/create',
				'User Groups'	=> 'user/group',
			)
		),
		'panel' => array(
			'name'		=> 'Admin Panel',
			'url'		=> 'panel',
			'icon'		=> 'fa fa-lock',
			'children'  => array(
				'Admin Users'			=> 'panel/admin_user',
				'Create Admin User'		=> 'panel/admin_user_create',
				'Admin User Groups'		=> 'panel/admin_user_group',
			)
		),
		// 'util' => array(
		// 	'name'		=> 'Utilities',
		// 	'url'		=> 'util',
		// 	'icon'		=> 'fa fa-cogs',
		// 	'children'  => array(
		// 		'Database Versions'		=> 'util/list_db',
		// 	)
		// ),
		'logout' => array(
			'name'		=> 'Sign Out',
			'url'		=> 'panel/logout',
			'icon'		=> 'fa fa-sign-out',
		)
	),

	// Login page
	'login_url' => 'sisadmin/login',

	// Restricted pages
	'page_auth' => array(
		'user/create'				=> array('webmaster', 'admin', 'manager'),
		'user/group'				=> array('webmaster', 'admin', 'manager'),
		'panel'						=> array('webmaster'),
		'panel/admin_user'			=> array('webmaster'),
		'panel/admin_user_create'	=> array('webmaster'),
		'panel/admin_user_group'	=> array('webmaster'),
		'util'						=> array('webmaster'),
		'util/list_db'				=> array('webmaster'),
		'util/backup_db'			=> array('webmaster'),
		'util/restore_db'			=> array('webmaster'),
		'util/remove_db'			=> array('webmaster'),

		//Own Page
	),

	// AdminLTE settings
	'adminlte' => array(
		'body_class' => array(
			'webmaster'	=> 'skin-red',
			'admin'		=> 'skin-purple',
			'manager'	=> 'skin-black',
			'staff'		=> 'skin-blue',
		)
	),

	// Useful links to display at bottom of sidemenu
	'useful_links' => array(
		array(
			'auth'		=> array('webmaster', 'admin', 'manager', 'staff'),
			'name'		=> 'Frontend Website',
			'url'		=> '#',
			'target'	=> '_blank',
			'color'		=> 'text-aqua'
		),
	),

	// Debug tools
	'debug' => array(
		'view_data'	=> FALSE,
		'profiler'	=> FALSE
	),
);

/*
| -------------------------------------------------------------------------
| Override values from /application/config/config.php
| -------------------------------------------------------------------------
*/
$config['sess_cookie_name'] = 'ci_session_admin';
