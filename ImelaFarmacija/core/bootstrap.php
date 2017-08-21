<?php

	
	require 'classes/User.php';
	require 'classes/Komitent.php';


	require 'core/Router.php';
	require 'core/database/Connection.php';
	require 'core/database/QBuilder.php';
	require 'core/Request.php';

	require 'view/links/links.php';
	require 'core/functions.php';

	//vd($y);
	
	$config= require 'core/config.php';

	$query= new QBuilder(Connection::make($config['database']));