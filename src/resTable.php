<?php 

header("Content-type:text/html charset=utf-8");

/*********************************
* Recupère la requête de l'étudiant POST
* Récupère le nom de l'ex et le numéro de la question POST
* Va chercher les infos concernant la question
* @TODO nettoyer la requête étudiant pour éviter les TRANSACS
* @TODO nettoyer la requête étudiant pour éviter les UPDATE, INSERT, DELETE ,si pas de rollback
* Effectuer la requête de rollback AVANT si nécessaire
* Effectuer la requête étudiant
* Afficher la requête de rollback APRÈS si nécessaire
* Renvoyer un array encodé en json
**********************************/


// récupérer les identifiants et mots de passe des bases de données
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('../config/configUser.php');
require_once('../config/configAdmin.php');

// Récupérer le nom de l'exercice et le numéro de la question
$ex = $_POST['ex']; 
$num = $_POST['num'];

// Construire le nom de la base de données à partir du nom de l'exercice
$dbnameUser = 'sqlpratique_'.$ex;
$queryEtu = $_POST['query'];

//****************
/*CONNECTION DB Questions */
//*****************
// @TODO: mettre les questions dans une base propre à chaque exercice
// pour obtenir la requête de correction
$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }

$query = 'SELECT * FROM '.$ex.' WHERE numQuestion='.$num;
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


$query = $row[4];

// Nettoyer la requête de l'étudiant en enlevant les 
$interdits = array("Start transaction", "Rollback", "commit");
$queryEtu = str_ireplace($interdits, "", $queryEtu); ;

// S'il le rollback est vide, on execute la correction
// Sinon on ajoute le begin transac et on exécute le rollback avant et après.
if ($row[6]=="") {
	$beginTransac = mysqli_begin_transaction($conUser);
	$result= mysqli_query($conUser,$queryEtu);
	if (is_bool($result) === true) {
		//$response['res'] = $result;
		$response['res'] = "<span class='warning'>Ne faites pas de modification dans cette question!</span>";
	}else{
	$response['res'] = sql_to_html_table( $result, $delim="\n" ) ; 
	}
	$rb = mysqli_rollback($conUser);
	if (is_bool($result) ==! true) {
		mysqli_free_result($result);
	}
}else{
	$beginTransac = mysqli_begin_transaction($conUser);
	$rbBefore = mysqli_query($conUser,$row[6]);
	$result= mysqli_query($conUser,$queryEtu);
	//$response['corr'] ;
	$response['rbBefore'] = sql_to_html_table( $rbBefore, $delim="\n" ) ; 
	$rbAfter = mysqli_query($conUser,$row[6]);
	$response['rbAfter'] = sql_to_html_table( $rbAfter, $delim="\n" ) ; 
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