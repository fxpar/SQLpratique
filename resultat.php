<?php 

header("Content-type:text/html");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('configUser.php');


$ex = $_GET['ex']; 
$num = $_GET['num'];

$dbnameUser = 'sqltraining_'.$ex;

//****************
/*CONNECTION DB */
//*****************
$con = mysqli_connect($dbhostUser,$dbuserUser,$dbpassUser,$dbnameUser);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }






//************** Récupérer la question

	
	//$query = 'SELECT * FROM questions WHERE db="sqltraining_'+$ex+'" AND numQuestion='+$num;
	$query = 'SELECT * FROM questions';


/*
if (mysqli_query($con, $query)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($con);
}
*/

//**** version avec champs: utile pour champs cachés
  /*     
	foreach($_POST as $key => $value) {
	  $action .= "POST parameter '$key' has '$value'\n";
	}
  */
  
  
$result= mysqli_query($con,$query);
	
//************** XHR RESPONSE	
    
while($row = mysqli_fetch_array($result))
{
    $output = $row[1];
    header("Content-type:text/plain");
    echo print_r($row);
	//echo $output;
}

mysqli_free_result($result);
mysqli_close($con);
?>