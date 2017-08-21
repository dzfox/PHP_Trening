<?php
	
	function vd ($variable) {
		echo '<pre>';
		return var_dump($variable);
		echo '</pre>';
	}

	function dd ($dump_data) {
		echo '<pre>';
		die (var_dump($dump_data));
		//echo '</pre>';
	}