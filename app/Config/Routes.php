<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override(function(){
    echo "Access Denied";
});
$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');

$routes->get('client', 'Client::index');
$routes->post('client', 'Client::store');
$routes->get('client/(:num)', 'Client::show/$1');
$routes->post('client/(:num)', 'Client::update/$1');
$routes->delete('client/(:num)', 'Client::destroy/$1');

$routes->group('auth', function($routes)
{
    $routes->group('users', function($routes)
    {
        $routes->post('register', 'Auth::register');
				$routes->post('login', 'Auth::login');
    });

		$routes->group('admins', function($routes)
		{
				$routes->post('register', 'Admin::register');
				$routes->post('login', 'Admin::login');
		});

});

$routes->group('api', function($routes)
{
    $routes->group('cards', function($routes)
    {
        $routes->post('get_all', 'Cards::get_all');
				$routes->post('get_by_pan', 'Cards::get_by_pan');
				$routes->post('get_by_phone', 'Cards::get_by_phone');
    });

		$routes->group('partners', function($routes)
		{
				$routes->post('get_all', 'Partners::get_all');
				$routes->post('get_by_name', 'Partners::get_by_name');
				$routes->post('get_by_cat', 'Partners::get_by_cat');
				$routes->post('get_by_term', 'Partners::get_by_term');
		});

		$routes->group('transactions', function($routes)
		{
				$routes->post('get_all', 'Transactions::get_all');
				$routes->post('get_by_period', 'Transactions::get_by_period');
				$routes->post('get_by_pan', 'Transactions::get_by_pan');
				$routes->post('get_by_partner', 'Transactions::get_by_partner');
				$routes->post('get_by_term', 'Transactions::get_by_term');
		});

});
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
