<?php
	require 'view/partials/header.php';


	echo '<h1>Saradnici</h1>';

	
	foreach ($komitenti as $komitent) {
		echo '<li>'.
				$komitent->Naziv.' '.$komitent->Grad.', '.$komitent->Zemlja
			.'</li>';
	}

	require 'view/partials/footer.php';