<?php
	require 'view/partials/header.php';


	echo '<h1>Fakture</h1>';

	echo '<form method="POST" action="/fakture">';
		foreach (QBuilder::atributes('Faktura')['1'] as $key => $value) {
			echo $value.': <input name="'.$value.'"></input><br>';
		}
		echo '<button type="submit">Submit</button>';
	echo '</form>';

	
	require 'view/partials/footer.php';