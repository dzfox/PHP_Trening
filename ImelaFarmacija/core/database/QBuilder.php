<?php

class QBuilder {

	protected $pdo;

	public function __construct (PDO $pdo) {
		$this->pdo=$pdo;
	}


	public static function properties ($classP){
		
		$i=0;
		foreach ((array) new $classP as $key => $value) {
			$propertyListInp[$i]=$key;
			$i=$i+1;
		}

		$i=0;
		foreach ($propertyListInp as $key => $value) {
			if($key!==0){
				$propertyListInput[$i]=$value; 
				$i=$i+1;
			}
		}
		//vd($propertyListInput);

		$propertyList="";
		foreach ($propertyListInput as $key => $value) {
			$propertyList.=', '.$value;
		}
		
		$properties=trim($propertyList,', ');

		$propertiesAll=[$properties,$propertyListInput];
		//vd($propertiesAll);
		return $propertiesAll;
	}

	public function selectAll ($table, $intoClass){
		$statement=$this->pdo->prepare("select * from {$table}");

		$statement->execute();

		return $statement->fetchAll(PDO::FETCH_CLASS, $intoClass);
	}

	
	
	public function insertNew ($table, $values, $intoClass){
		
		$properties=QBuilder::properties($intoClass)['0'];
		//vd($properties);

		$statement=$this->pdo->prepare("insert into {$table} ({$properties}) values ({$values})");
		$statement->execute();

		return 'USPESNO UNESEN USER!';

	}



}