<?php 

// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('config.php');

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

//********************************************
/*Récupération requête envoyée par ajax POST */
//********************************************
$query = $_POST['query'];    


$result= mysqli_query($con,"$query");

/* fetch all, vérifier si cela marche sur ovh
$row = mysqli_fetch_all($result,MYSQLI_BOTH);
echo print_r($row);
*/
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

