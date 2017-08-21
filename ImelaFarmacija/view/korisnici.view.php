<?php

require 'view/partials/header.php';

	echo '<h3>'.$insert.'</h3>';
    

    echo '<ul>';
?>
	</td>
</tr>
<tr>
    <td cellpadding="30">
<?php
	foreach ($users as $user) {
		echo '<li>'.
				$user->Ime.' '.$user->Prezime, 
				($user->Zaposlen)? ', Zaposlen(a)':', Nije zaposlen(a)'
			.'</li>';
	}


	//vd(parse_url($_SERVER['REQUEST_URI']));

	require 'view/partials/footer.php';