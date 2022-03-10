<?php 

header("Content-type:text/html charset=utf-8");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('../config/configUser.php');
require_once('../config/configAdmin.php');


//$ex = $_GET['ex']; 
//$num = $_GET['num'];

$ex = "livres"; 
$num = 1;


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
$query = $row[3];


//****************
/*CONNECTION DB */
//*****************
// pour jouer la requête de la correction et obtenir le résultat attendu
$conUser = mysqli_connect($dbhostUser,$dbuserUser,$dbpassUser,$dbnameUser);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }

//echo $query;
$result= mysqli_query($conUser,$query);
//$row = mysqli_fetch_array($result);
//$row = mysqli_fetch_all($result);


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

echo sql_to_html_table( $result, $delim="\n" ) ; 
//echo json_encode($row);


mysqli_free_result($result);
mysqli_close($con);
?>