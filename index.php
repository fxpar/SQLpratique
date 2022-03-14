<?php

// display errors
error_reporting(E_ALL); 
ini_set('display_errors', 1);

header("Content-type:text/html charset=utf-8");


// include config file with passwords
define('__ROOT__', dirname(dirname(__FILE__)));
require_once('config/configAdmin.php');


//récupérer l'exercice en cours
//$ex = $_POST['ex']; 
 if(isset($_GET['ex'])) { $ex = $_GET['ex'];} else {$ex = 'livres'; };
 if(isset($_GET['num'])) { $num = $_GET['num'];} else {$num = 1; };
 if(isset($_GET['i'])) { $i = $_GET['i'];} else {$i = 1; };
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
   	<link rel="stylesheet" href="src/style.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="Author" content="François Parlant" />
	<meta name="Keywords" content="Jérôme,Darmont,Enseignement,Informatique,SQL,MySQL,Tutoriel,Didacticiel" />
	<meta name="Description" content="Entrainement au SQL (sur une idée originale de DARMONT Jérôme,HUYNH NGO Uyen Kim,ROJTHONGKUM Narumon)" />
	<!--<link href="./ext//bootstrap/css/bootstrap.min.css" rel="stylesheet" >
<script src="./ext/bootstrap/js/bootstrap.bundle.min.js" ></script>-->

	<script type="text/JavaScript" src="src/oXHR.js"></script>
	
	<script type="text/JavaScript">
		var Popup1 = null;
		var Popup2 = null;
	</script>	
</head>
<body>		
	<section>
		
		<nav>
			
				
			
				<script type="text/JavaScript">
					var ex = '<?php echo $ex ?>';
					var num = <?php echo $num ?>;
					var i = <?php echo $i ?>;
					var currenLocation = window.location.origin+window.location.pathname;
					getQuestion(ex, num);	
					//getQuestion(ex, num);	
					//getCorrection(ex, num);
					
					//getRequete(ex, num);
				</script>	
				
				<div type="button" class="bouton nav " id = "bouton2" value="Question précédente" onclick="num=desincremente(num);getQuestion(ex,num);reset();" >&lt; préc</div>	
				
				<div type="button" class="bouton schema sep" id="btSchemaUml" name="submit" value="Modèle conceptuel UML" onclick="if (!Popup1 || !Popup1.open || Popup1.closed) Popup1 = ouvrePopup('schemaUML.php', 500, 650); else Popup1.focus();" >▶ UML</div>
				
				<div type="button" class="bouton schema sep" id="btSchemaRel"  onclick="HideShow('schemaRel','btSchemaRel','▼ Tables', '▶ Tables');" >▶ Tables</div> 
				
				<div type="button" class="bouton nav sep" id = "bouton2" value="Question suivante" onclick="num=incremente(num);getQuestion(ex,num);reset();" >suiv &gt;</div>	
			
		</nav>
		
		<!-- Schéma Relatinnel -->
		<div id="schemaRel" class="" style="display:none"><?php echo file_get_contents('db/exercices/'.$ex.'/schemaRel.txt') ?></div>
		
		<!-- Formulaire requête -->
		<form method="post" onsubmit="return getResult(this.query.value);" action="" id="form1">	
		<span id="exSelect">
				<label for="exList">Exercice:</label>

				<select name="ex" id="exList" onchange="window.location.href = currenLocation+'?ex='+this.options[this.selectedIndex].value+'&i='+this.options[this.selectedIndex].index;">
				  <option value="livres" selected="selected">Livres</option>
				  <option value="euro2021">euro2021</option>
				  <option value="employee">employee</option>
				  <option value="audi">Sport</option>
				</select> 
			</span>		
			<span>
				<label for="num">Question n°:</label>
				<input type="text" name="num" id="num" size="2" value="<?php echo $num ?>"/>
			</span>
		
		
		
		<!-- Enoncé question -->
		<p class = "content">
		<div id="question" class="qlib"></div>
		</p>		
	
		<!-- Résultat attendu -->
		<div id="corrTable" ></div>			
		
		<!-- Correction -->
		<p type="button" id="boutonCorr" value="Correction" onclick="HideShow('requete','boutonCorr','Masquer la correction', 'Voir la correction');" /> Voir la correction<p>
		<p id="requete" style="display:none" ><br /></p>
		<hr class="separation"/>
		
		
			
		
		<p class="saisie">
		<h3>Saisissez votre requête SQL</h3>
		<textarea name="query" id="query" rows="4" ></textarea></br>
		<p class="subbutton"><input type="reset" id ="boutonEffacer" value="Effacer" /><input type="submit" id="boutonExecuter" value="Exécuter" /><br />
		</p></p>		
		</form>		
		
		<p class="content"><div id="resTable"></div></p>
		
		<!-- Commentaires -->
		<p type="button" id="boutonCom" value="Commentaire" onclick="HideShow('commentaire','boutonCom','Masquer les commentaires', 'Voir les commentaires');" /> Voir les commentaires<p>
		<div id="commentaire" style="display:none"></div>
	</section>
	<footer>
		<p><a href="https://creativecommons.org/licenses/by-sa/4.0/deed.fr"><img src="res/by-sa.svg" alt="licence creative commons by sa 4.0"/></a><br/><a href="https://creativecommons.org/licenses/by-sa/4.0/deed.fr">Licence cc-by-sa-4.0</a></p>
		

		
		<div id="attribution">
		<p>v3.0 François Parlant</p>
		<p>v2.0 Huynh Ngo Uyen Kim - Narumon Rojthongkum - Univ Lyon 2 <a href="https://eric.univ-lyon2.fr/jdarmont/tutoriel-sql/">Tutoriel SQL</a> </p>
		<p>v1.0 Jérôme DARMONT - Univ Lyon 2 <a href="https://eric.univ-lyon2.fr/jdarmont/tutoriel-sql/">Tutoriel SQL</a></p>
		
		
		
		</div>
	</footer>
</body>
</html>