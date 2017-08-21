<?php
	require 'view/partials/header.php';


	echo '<h1>Dodaj korisnika</h1>';

	echo '<form method="POST" action="/korisnici">';
		foreach (QBuilder::properties('User')['1'] as $key => $value) {
			echo $value.': <input name="'.$value.'"></input><br>';
		}
		echo '<button type="submit">Submit</button>';
	echo '</form>';

?>

<!-- <form method="POST" action="/korisnici">
	<input name="korisnik"></input>
	<button type="submit">Submit</button>
</form> -->
<?php

	//vd(parse_url($_SERVER['REQUEST_URI'],PHP_URL_PATH));

	require 'view/partials/footer.php';