<?php

$korisnik=(isset($_POST['Ime']))?$_POST['Ime']:
									  "";


$ime=($korisnik=="")?'<h1>Nije uneseno ime!</h1>':
					 '<h1>Dodat korisnik:  '.$korisnik.'</h1>';



//echo $_POST['Ime'];
$values=(isset($values))?$values:"";
foreach ($_POST as $key => $value) {
	($value=="")?die('<h1>NISU SVE VREDNOSTI UNESENE!</h1>'):"";
	vd($value);
}
foreach ($_POST as $key => $value) {
	$values.=', "'.$value.'"';
}
$values=trim($values,', ');
vd($values);

$insert = $query->insertNew ('users',$values,'User');
$users = $query->selectAll('users','User');


require 'view/korisnici.view.php';