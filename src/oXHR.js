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
							console.log(xhr.responseText);
							var response = JSON.parse(xhr.responseText);
							console.log(response);
						document.getElementById("question").innerHTML = response[0][3];
						document.getElementById("requete").innerHTML = response[0][4];
						var c = document.getElementById("corrTable");
							c.innerHTML ="";
						if (typeof response['corr'] !=="undefined") c.innerHTML = response['corr'];					
						if (typeof response['rbBefore'] !=="undefined") c.innerHTML = '<div>AVANT</br>'+response['rbBefore']+'</div><div>&nbsp;</div>';						
						if (typeof response['rbAfter'] !=="undefined") c.innerHTML = c.innerHTML+'<div>APRES</br>'+response['rbAfter']+'</div>';						
						if (response[0][5] !="") {
						document.getElementById("commentaire").innerHTML = "<h3>Commentaires</h3>"+response[0][5];
						}
						setEx(i, num);
					}
				}
				xhr.open("GET","src/question.php?ex="+exercice+"&num="+number,true);
				xhr.send(null);
			}
			
			
			
			// Fonction qui permet d'afficher le résultat de la requête saisie sous forme de table ou de XML
			function getResult(q){					
				var xhr = getXhr();
				// On défini ce qu'on va faire quand on aura la réponse
				xhr.onreadystatechange = function(){
					// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
					if(xhr.readyState == 4 && xhr.status == 200){	
							console.log(xhr.responseText);
							var response = JSON.parse(xhr.responseText);
							console.log(response);
						var r = document.getElementById("resTable");
							r.innerHTML ="";
						// s'il n'y a pas de rollback, on affiche le résultat, sinon on affiche le AVANT / APRES
						if (typeof response['res'] !=="undefined") r.innerHTML = response['res'];					
						if (typeof response['rbBefore'] !=="undefined") r.innerHTML = '<div>AVANT</br>'+response['rbBefore']+'</div><div>&nbsp;</div>';						
						if (typeof response['rbAfter'] !=="undefined") r.innerHTML = r.innerHTML+'<div>APRES</br>'+response['rbAfter']+'</div>';

					
						//document.getElementById("resTable").innerHTML = xhr.responseText;												
					}
				}
				var params = "ex="+ex+"&num="+num+"&query="+q;
				xhr.open("POST","src/resTable.php",true);				
				xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				xhr.send(params);				
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
				console.log("RESET");
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
			function HideShow(id, msgid, onmsg, offmsg){ 
				
				var o = document.getElementById(id); 
				if(o.style.display == '' || o.style.display == 'block') {
					o.style.display = 'none'; 
					if (typeof msgid!== 'undefined') document.getElementById(msgid).innerHTML = offmsg;
				}else{
					o.style.display = 'block'; 
					if (typeof msgid!== 'undefined') document.getElementById(msgid).innerHTML = onmsg;
				}
			} 
			
			// Fonction pour obtenir le numéro de l'exercice dans la liste en fonction du nom
			function indexMatchingText(ele, text) {
    for (var i=0; i<ele.length;i++) {
        if (ele[i].childNodes[0].nodeValue === text){
            return i;
        }
    }
    return undefined;
}

			// fonction pour mettre sélectionner l'exercice en cours
			
			function setEx(i, n){
				
				document.getElementById('exList').getElementsByTagName('option')[i].selected = 'selected';
				document.getElementById('num').value = n;
			}