<?php

class Router {

	protected $routs=[];	


	public static function load ($routesFile){

		$router= new static;

		require $routesFile;

		return $router;


	}

	public function define ($routs){

		$this->routs=$routs;

	}

	public function direct ($uri) {

		if(array_key_exists($uri, $this->routs)){

			return $this->routs[$uri];

		}
		
		throw new Exception ('No defined rout');

	}



}