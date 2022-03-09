<?php 

header("Content-type:text/html");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('configUser.php');


$ex = $_POST['ex']; 

$dbnameUser = 'sqlpratique_'.$ex;

//****************
/*CONNECTION DB */
//*****************
$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }






//************** WRITE ACTION TO LOG.TXT

	$action="NEW ACTION\n";
	$query = 'INSERT INTO tsk_msg (action_id, alias_id, type, keyword, value) VALUES';

	//*** Gets simple # and Special ## keywords
	//*** Avoids ~# escaped keywords
	
	preg_match_all("/[^~]((#{1,2})(\w+)(:@(\w+))*)/u", $_POST['taskDescription'], $keywords);
	echo print_r($keywords);
	$n = 0;// compteur pour ajouter une 'virgule entre chaque value
	foreach($keywords as $key => $value) {
		if (isset($value[$key])) {
			if ($n==1)  $query .=',';
			$query .= "(1, 1,'".$keywords[2][$key]."', '".$keywords[3][$key]."', '".$keywords[5][$key]."')\n";
	  $action .= "'".$keywords[2][$key]."' = '".$keywords[3][$key]."' has '".$keywords[5][$key]."'\n";
	  $n=1;
		}
	}
	
	$action.="END ACTION\n";
	
	file_put_contents("log.txt", $action, FILE_APPEND);

//********************************************
/*Récupération requête envoyée par ajax POST */
//********************************************
   


if (mysqli_query($con, $query)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($con);
}


//**** version avec champs: utile pour champs cachés
  /*     
	foreach($_POST as $key => $value) {
	  $action .= "POST parameter '$key' has '$value'\n";
	}
  */
  
  

	
//************** XHR RESPONSE	
    
    //echo print_r($_POST);
	
	//mysqli_free_result($result);
	mysqli_close($con);
?>