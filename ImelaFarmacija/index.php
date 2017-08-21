<?php

	require 'core/bootstrap.php';
	
	// $router = new Router;

	// require 'routes.php';

	//vd($_SERVER);

	//$uri= trim ($_SERVER ["REQUEST_URI"],'/');

	//require $router->direct($uri);
	//require Router::load('routes.php')->direct($uri);
	
	require Router::load('core/routes.php')->direct(Request::uri());


	

	

