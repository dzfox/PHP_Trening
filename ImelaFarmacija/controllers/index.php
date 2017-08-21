<?php

	



	$users= $query->selectAll ('users','User');
	//vd($users);

	//$users= $query->selectAll ('usersi');
	// $users= array_map(function($user){
	// 	$u= new User; 
	// 	foreach ($user as $key => $value) {
	// 		$u->$key=$user->$key;
	// 	}
	// 	return $u;
	// 	//vd($u);

	// }, $users);


	$greeting=['Dobro dosli na nasu stranicu!', 'Dovidjenja!', 'Ostacemo u kontaktu!'];

	//dd($users);

	require 'view/index.view.php';
	
?>
