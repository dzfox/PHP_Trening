<?php
	
	require 'view/partials/header.php';
	echo '<h3>'.$greeting[0].'</h3>';
    

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

	require 'view/partials/footer.php';