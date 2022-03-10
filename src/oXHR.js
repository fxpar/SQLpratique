			// Fonction d'initiation d'objet XMLHttpRequest
			function getXhr(){
                var xhr = null; 
				if(window.XMLHttpRequest) // Firefox et autres
				   xhr = new XMLHttpRequest(); 
				else if(window.ActiveXObject){ // Internet Explorer 
				   try {
			                xhr = new ActiveXObject("Msxml2.XMLHTTP");
			            } catch (e) {
			                xhr = new ActiveXObject("Microsoft.XMLHTTP");
			            }
				}
				else { // XMLHttpRequest non supporté par le navigateur 
				   alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
				   xhr = false; 
				} 
                return xhr;
			}
			
			// Fonction qui permet d'afficher les questions
			function getQuestion(exercice, number){
				var xhr = getXhr();
				// On défini ce qu'on va faire quand on aura la réponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){
							var myArray = JSON.parse(xhr.responseText);
							//console.log(myArray);
						document.getElementById("question").innerHTML = myArray[2];												
						document.getElementById("requete").innerHTML = myArray[3];	
						if (myArray[4] !="") {
						document.getElementById("commentaire").innerHTML = "<h3>Commentaires</h3>"+myArray[4];
						}
					}
				}
				xhr.open("GET","src/question.php?ex="+exercice+"&num="+number,true);
				xhr.send(null);
			}
			
			// Fonction qui permet d'afficher la correction sous forme de table
			function getCorrection(exercice, number){
				var xhr = getXhr();
				xhr.overrideMimeType('text/plain; charset=UTF-8');
				// On défini ce qu'on va faire quand on aura la réponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){		
					console.log("CORRECTION");
						console.log(xhr.responseText);
						document.getElementById("corrTable").innerHTML = xhr.responseText;												
					}
				}
				xhr.open("GET","src/corrTable.php?ex="+exercice+"&num="+number,true);
				xhr.send(null);
			}
			
			// Fonction qui permet d'afficher la correction sous forme de requête
			function getRequete(exercice, number){
				var xhr = getXhr();
				// On défini ce qu'on va faire quand on aura la réponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){						
						document.getElementById("requete").innerHTML = xhr.responseText;												
					}
				}
				xhr.open("GET","src/requete.php?ex="+exercice+"&num="+number,true);
				xhr.send(null);
			}
			
			// Fonction qui permet d'afficher le résultat de la requête saisie sous forme de table ou de XML
			function getResult(q){					
				var xhr = getXhr();
				// On défini ce qu'on va faire quand on aura la réponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){						
						document.getElementById("resTable").innerHTML = xhr.responseText;												
					}
				}
				xhr.open("POST","src/resTable.php",true);				
				xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				xhr.send("query="+q);				
				return false;
			}
			
			// Fonction qui incrémente le numéro de question
			function incremente(number){				
				if (num < 20){
					number++;
				}
				return number;
			}

			// Fonction qui désincrémente le numéro de question
			function desincremente(number){				
				if (num > 1){
					number--;
				}
				return number;
			}
			
			// Fonction qui permet de récupérer la valeur choisie du bouton radio
			/*function getChoix(){
				var radios = document.getElementsByName("affichage");
				var choix;
				for (i=0; i<radios.length; i++){
					if (radios[i].checked)
						choix = radios[i].value;
				}
				return choix;
			}*/
			
			// Fonction qui permet de vider tous les résultats
			function reset(){
				document.getElementById("question").innerHTML = "";
				document.getElementById("requete").style.display = "none";
				document.getElementById("query").value = "";
				document.getElementById("resTable").innerHTML = "";
				document.getElementById("commentaire").innerHTML = "";
			}
			
			// Fonction qui ouvre la fenêtre pop-up
			function ouvrePopup(page, longueur, largeur){
				return window.open(page, null, "height="+longueur+", width="+largeur+", status=yes, toolbar=no, menubar=no, location=no");
			}
			
			// Fonction pour afficher/masquer un élément
			function HideShow(id){ 
				var o = document.getElementById(id); 
				if(o.style.display == '' || o.style.display == 'block') o.style.display = 'none'; 
				else o.style.display = 'block'; 
			} 