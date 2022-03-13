<?php 

header("Content-type:text/html charset=utf-8");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('../config/configUser.php');
require_once('../config/configAdmin.php');


$ex = $_GET['ex']; 
$num = $_GET['num'];

$dbnameUser = 'sqlpratique_'.$ex;


//****************
/*CONNECTION DB Admin */
//*****************
// pour obtenir la requête de correction
$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }

$query = 'SELECT * FROM questions WHERE db="sqlpratique_'.$ex.'" AND numQuestion='.$num;
$result= mysqli_query($con,$query);
$row = mysqli_fetch_array($result);

// Stocker les informations dans le tableau à renvoyer
// déclarer l'array qu'on enverra à la fin encodé en json
// [0][3] contiendra la question
$response = array();
$response[] = $row;




//****************
/*CONNECTION DB */
//*****************
// pour jouer la requête de la correction et obtenir le résultat attendu
$conUser = mysqli_connect($dbhostUser,$dbuserUser,$dbpassUser,$dbnameUser);
mysqli_set_charset( $conUser, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }


$query = $row[3];

// S'il le rollback est vide, on execute la correction
// Sinon on ajoute le begin transac et on exécute le rollback avant et après.
if ($row[6]=="") {
	$result= mysqli_query($conUser,$query);
	$response[] = sql_to_html_table( $result, $delim="\n" ) ; 
	mysqli_free_result($result);
}else{
	$beginTransac = mysqli_begin_transaction($conUser);
	$rbBefore = mysqli_query($conUser,$row[6]);
	$result= mysqli_query($conUser,$query);
	//$response[] = sql_to_html_table( $result, $delim="\n" ) ; 
	$response[] = sql_to_html_table( $rbBefore, $delim="\n" ) ; 
	$rbAfter = mysqli_query($conUser,$row[6]);
	$response[] = sql_to_html_table( $rbAfter, $delim="\n" ) ; 
	$rb = mysqli_rollback($conUser);
	//mysqli_free_result($result);
	mysqli_free_result($rbBefore);
	mysqli_free_result($rbAfter);
}




function sql_to_html_table($sqlresult, $delim="\n") {
  // starting table
  $htmltable =  "<table id='table_corr'>" . $delim ;   
  $counter   = 0 ;
  // putting in lines
  while( $row = $sqlresult->fetch_assoc()  ){
    if ( $counter===0 ) {
      // table header
      $htmltable .=   "<tr>"  . $delim;
      foreach ($row as $key => $value ) {
          $htmltable .=   "<th>" . $key . "</th>"  . $delim ;
      }
      $htmltable .=   "</tr>"  . $delim ; 
      $counter = 22;
    } 
      // table body
      $htmltable .=   "<tr>"  . $delim ;
      foreach ($row as $key => $value ) {
          $htmltable .=   "<td>" . $value . "</td>"  . $delim ;
      }
      $htmltable .=   "</tr>"   . $delim ;
  }
  // closing table
  $htmltable .=   "</table>"   . $delim ; 
  // return
  return( $htmltable ) ; 
}

//echo sql_to_html_table( $result, $delim="\n" ) ; 
//echo json_encode($row);

echo json_encode($response);


mysqli_close($con);
mysqli_close($conUser);
?>