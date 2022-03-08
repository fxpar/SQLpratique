<?php

// display errors
error_reporting(E_ALL); 
ini_set('display_errors', 1);



// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('configAdmin.php');


//récupérer l'exercice en cours
//$ex = $_POST['ex']; 
 if(isset($_POST['ex'])) { $ex = $_POST['ex'];} else {$ex = 'livres'; };
 if(isset($_POST['num'])) { $num = $_POST['num'];} else {$num = 1; };

// prends le nom de l'exercice


$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
mysqli_set_charset( $con, 'utf8');
// Check connection
		if (mysqli_connect_errno())
		  {
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  }else{
			  
			$_SESSION["con"] = $con;
		  }

		  
$uid = 1;		  

$sql="SELECT * FROM ".$prefix."user where user_id=$uid";
//DEBUG echo "\n<br/>".$sql."<br/>\n";


/*
if ($result=mysqli_query($con,$sql))
  {
  // Fetch one and one row
$user=mysqli_fetch_row($result);
//DEBUG  echo "user:".$user[1];

  // Free result set
  mysqli_free_result($result);
}else{
	echo "no results";
}
*/

$qid = 1;


mysqli_close($con);

//query to update the timestamp and add one year
// UPDATE value =  value + $newvalue 
// SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);
// => UPDATE 
  
?> 



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>SQL Training</title>
   	<link rel="stylesheet" href="style.css" type="text/css" />
	<meta name="Author" content="François Parlant" />
	<meta name="Keywords" content="Jérôme,Darmont,Enseignement,Informatique,SQL,MySQL,Tutoriel,Didacticiel" />
	<meta name="Description" content="Entrainement au SQL (sur une idée originale de DARMONT Jérôme,HUYNH NGO Uyen Kim,ROJTHONGKUM Narumon)" />
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" >
<script src="./bootstrap/js/bootstrap.bundle.min.js" ></script>

	<script type="text/JavaScript" src="oXHR.js"></script>
	<script type="text/JavaScript">
		var Popup1 = null;
		var Popup2 = null;
	</script>	
</head>
<body>		
	<section>
		<!--<img id = "banner" src="Image/BannerSQL.jpg"  alt="Bannière J. Darmont - Tutoriel SQL" border="1" />-->

		<!-- Menu (JD) -->
		<nav>
			<div id="modeles">
				<input type="submit" id="bouton1" name="submit" value="Modèle conceptuel UML" onclick="if (!Popup1 || !Popup1.open || Popup1.closed) Popup1 = ouvrePopup('schemaUML.php', 500, 650); else Popup1.focus();" />
				<input type="submit" id="bouton1" name="submit" value="Modèle logique relationnel" onclick="if (!Popup2 || !Popup2.open || Popup2.closed) Popup2 = ouvrePopup('schemaRelationnel.php', 150, 400); else Popup2.focus();" /> 
			</div>

			<div id="questions">
				<script type="text/JavaScript">
					var ex = '<?php echo $ex ?>';
					var num = <?php echo $num ?>;		
					getQuestion(ex, num);	
					getCorrection(ex, num);
					getRequete(ex, num);
				</script>	
				<input type="button" id = "bouton2" value="Question précédente" onclick="num=desincremente(num);getQuestion(ex,num);getCorrection(ex,num);getRequete(ex,num);reset();" />	
				<input type="button" id = "bouton2" value="Question suivante" onclick="num=incremente(num);getQuestion(ex,num);getCorrection(ex,num);getRequete(ex,num);reset();" />	
			</div>
		</nav>
				
		<!-- Enoncé question -->
		<p class = "content"><h1>
		<div id="question" class="qlib"></div>
		</h1></p>		
	
		<!-- Résultat attendu -->
		<p class = "content"><div id="corrTable"></div></p>				
		
		<!-- Correction -->
		<p><input type="button" id = "bouton3" value="Correction" onclick="HideShow('requete')" /><br /></p>
		<p id="requete"><br /></p>
		
		<!-- Formulaire requête -->
		<form method="post" onsubmit="return getResult(this.query.value);" action="">	
			<div id="exSelect">
				<label for="ex">Exercice:</label>

				<select name="ex" id="ex">
				  <option value="livres" selected="selected">Livres</option>
				  <option value="saab">Pharma</option>
				  <option value="mercedes">Chambres</option>
				  <option value="audi">Sport</option>
				</select> 
			</div>		
		<p class ="content"><h1>Saisir une requête SQL</h1></p>
		<p class = "saisie">
		<textarea name="query" id="query" rows="4" cols="60"></textarea></br>
		<p><input type="reset" id ="bouton3" value="Effacer" /><input type="submit" id = "bouton3" value="Exécuter" /><br />
		</p></p>		
		</form>		
		
		<p class = "content"><div id="resTable"></div></p>
	</section>
	<footer>
		Version "2.0" par Huynh Ngo Uyen Kim &amp; Narumon Rojthongkum - <a href="https://eric.univ-lyon2.fr/jdarmont/tutoriel-sql/">Retour</a> - <a href="#">Haut de page</a>
	</footer>
</body>
</html>