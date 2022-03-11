<?php 

header("Content-type:text/html");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('../config/configUser.php');


$ex = $_POST['ex']; 
$num = $_POST['num'];
$query = $_POST['query'];

$dbnameUser = 'sqlpratique_'.$ex;

//****************
/*CONNECTION DB */
//*****************
$conUser = mysqli_connect($dbhostUser,$dbuserUser,$dbpassUser,$dbnameUser);
mysqli_set_charset( $conUser, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }






//************** Récupérer la question

	
	//$query = 'SELECT * FROM questions WHERE db="sqlpratique_'+$ex+'" AND numQuestion='+$num;
	//$query = 'SELECT * FROM questions';


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
  
  
$result= mysqli_query($conUser,$query);



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

mysqli_free_result($result);
mysqli_close($conUser);
?>