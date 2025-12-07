Ce script Autohotkey est conçu pour pour faire gagner du temps sur votre ordinateur. v0.12. 05/12/25. ©Syhnd.

Il nécessite d'avoir installé l'application AutoHotKey v1.1 au préalable. Compatible Windows uniquement.

L'application est disponible sur le site officiel : https://www.autohotkey.com/

Cliquer sur Download, puis v1.1 (la version 2.0 est sortie mais certaines fonctions de mon script ne sont pas compatibles avec, donc il faut rester sur la 1.1), Lancer le programme d'installation et Suivre les étapes (installation en 1 minute chrono).

Puis sur cette page github, Cliquer sur le bouton vert "Code <>" en haut à droite et Télécharger en fichier .zip

Extraire ce document .zip à l'endroit de votre choix et Double-cliquer sur le fichier Opti.ahk. Le script se lance et vous aurez une petite icône dans votre barre des tâches à côté de votre horloge. Vous pouvez terminer le script en faisant un clic droit dessus.



--- Fichier principal, Opti.ahk

Le fichier Opti.ahk est le fichier maître, à lancer en premier. Il contient les raccourcis claviers (Hotkeys) pour lancer les fonctions spécifiques. Lancer ce fichier lance également automatiquement les autres scripts (Texte.ahk et Fonctions.ahk)

Vous pouvez ajouter vos propres raccourcis personnalisés à la fin de ce fichier en suivant le modèle suivant : Touche désirée suivi de :: puis la fonction désirée.

Par exemple

a::Send Salut

a & b::Run chrome.exe

À chaque fois que vous appuierez sur la touche A, le texte "Salut" sera envoyé. A chaque fois que vous appuierez sur A et B en même temps, Google Chrome sera lancé.

Par défaut seules les combinaisons de 1 ou 2 touches peuvent peuvent être écrites simplement, si vous souhaitez combiner 3 touches, il faut utiliser un subterfuge (Cf la méthode utilisée sur CapsLock & Esc).

Pour apprendre à créer vos propres fonctions, je vous invite à lire la documentation très complète d'AutoHotKey sur ce lien https://www.autohotkey.com/docs/v1/Hotstrings.htm

- L'appui simultané de CapsLock et la touche sélectionnée donne cette fonction. Un appui sur la touche Verr. Maj. vous donne un aperçu en infobulle des raccourcis.

Capslock +

  Esc : Calculatrice / Alt+Esc : Gestionnaire des tâches

  ² : Quick Menu / 1 : 7 / 2 : 8 / 3 : 9 / 4 : casse (Maj : MAJ ; Ctrl : min ; Alt : toggle ; Alt+Maj : iNV ; Ctrl : Swap) / 5 : parentheses&brackets / 789à)= : rien

  A : 4 / Z : 5 / E : 6 / R : - / T : affiche l'heure / Y : transparence / U and I : Remplacer texte spécifique / P : aperçu avant impression / TabYO^$* : rien
  
  Q : 1 / S : 2 / D : 3 / F : + / G : chercher texte sélectionné sur google / H : ajouter hotstring / J : Always On Top / KLMù* : rien

  < : < / W : 0 / X : "/" / C : * / V : Demander à chatGPT de reformuler pour intégrer dans un courrier d'hospi /  B : corriger ordonnance / N : corriger courrier / , : effacer texte sélectionné dans tout le document / ;:! : rien

  Clic gauche : Double clic


- Numlock : les touches du Numpad deviennent des raccourcis texte (par exemple pour vos adresses mail), un appui sur la touche Verr. Num. vous donne un aperçu en infobulle des raccourcis texte envoyés 


- Quand la souris est sur le bord de l'écran :
	Bord Gauche : 
		WheelUp : Vol+ / WheelDown : Vol- / Mbutton : Mute / CapsLock : AltTab
	Bord Droit :
		WheelUp : Brightness+ / WheelDown : Brightness-
	Bords Haut et Bas :
		Rien


- Souris

	Rbutton + WheelUp : Page Up / Rbutton + MWheelDown : Page Down

	Mbutton + WheelUp : AltTab GUI Next Window / Mbutton + MWheelDown : AltTab GUI Prev Window

	MButton + Drag : Move Window / Ctrl+MButton + Drag : Resize Window (adjust nearest corner) / RButton x2 : Maximize Window


- RButton + déplacer souris : Suivre une séquence de mouvements pendant que le clic droit est enfocée déclenche la fonction spécifiée dans l'infobulle.

	Up : Win+Tab / Up->Left : previous tab / Up->Right : Next Tab / Up->Left->Down : Prev Desktop / Up->Right->Down : Prev Desktop

	Down : Minimize All (aka panic gesture) /

	Left : AltTab / Left->Up : Maximize Window / Left->Down : Minimize Window

	Right : Maj+AltTab / Right->Down : Close Window



--- Fichier accessoire, Texte.ahk

Le fichier Texte.ahk est utilisé pour les Hotstrings. Les Hotstrings sont des remplacement automatiques de texte au fur et à mesure que vous écrivez, par exemple pour une fonction Autocorrect (en première partie du fichier 650+ fautes de frappe fréquentes), ou des abréviations (2ème partie du fichier).

Ce script est lancé automatiquement lorsque vous lancez Opti.ahk, mais vous pouvez choisir de le lancer seul si vous ne souhaitez utiliser que les Hotstrings, sans utiliser les raccourcis claviers/fonctions.

Vous pouvez ajouter vos propres raccourcis à la fin de ce fichier. Pour ce faire il faut précéder et suivre le raccourci que vous souhaitez remplacer par deux symboles ":" (sans apostrophe) et écrire à la suite le mot qui sera écrit à la place.

Par exemple 

::ecgnl::ECG Normal

Si vous écrivez "ecgnl" (sans apostrophe) suivi d'un espace ou ponctuation, le script remplacera automatiquement par "ECG Normal" (sans apostrophe) suivi de l'espace ou la ponctuation que vous aviez tapé.

Pour + d'informations vous pouvez consulter la documentation très complète d'AutoHotKey sur ce lien https://www.autohotkey.com/docs/v1/Hotstrings.htm



--- Fichier accessoire, Fonctions.ahk

Le fichier Fonctions.ahk contient ce qu'on appelle les fonctions et labels.

Ce fichier ne peut être lancé seul, il a besoin d'Opti.ahk pour fonctionner (il est lancé automatiquement par Opti.ahk).

À moins de savoir coder, il est recommandé de ne pas le modifier.


Pour toute question, n'hésitez pas à me contacter par les canaux usuels :)
