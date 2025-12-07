; Ce fichier contient ce qu'on appelle les fonctions et labels.
; Ce fichier ne peut être lancé seul, il a besoin d'Opti.ahk pour fonctionner (il est lancé automatiquement par Opti.ahk).
; À moins de savoir coder, il est recommandé de ne pas le modifier.

; ===========================
; Fonctions & Labels
; ===========================
HotstringMenuAutoExecute:
	1MailList := {"votremail1@gmail.com": "&1","votremail2@hotmail.fr": "&2","votremail3@votremail.org": "&3","votremail4@outlook.fr": "&4","votremail5@gmail.com": "&5"}
	Fractions1 := {⅒: "1 sur 1&0",⅑: "1 sur &9",⅛: "1 sur &8",⅐: "1 sur &7",⅙: "1 sur &6",⅕: "1 sur &5",¼: "1 sur &4",⅓: "1 sur &3",½: "1 sur &2"}
	Fractions2 := {⅔: "2 sur &3",¾: "3 sur &4",⅖: "2 sur &5",⅗: "3 sur &5",⅘: "4 sur &5",⅚: "5 sur &6",⅜: "3 sur &8",⅝: "5 sur &8",⅞: "7 sur &8"}
	Indi := {₀: "&0",₁: "&1",₂: "&2",₃: "&3",₄: "&4",₅: "&5",₆: "&6",₇: "&7",₈: "&8",₉: "&9",₊: "&+",₋: "&-",₌: "&=",₍: "&(",₎: "&)"}
	Puiss := {⁰: "&0",¹: "&1",²: "&2",³: "&3",⁴: "&4",⁵: "&5",⁶: "&6",⁷: "&7",⁸: "&8",⁹: "&9",⁺: "&+",⁻: "&-",⁼: "&=",⁽: "&(",⁾: "&)"}
	ArrowsA := {⇙: "&1",⇓: "&2",⇘: "&3",⇐: "&4",⇕: "&5",⇒: "&6",⇖: "&7",⇑: "&8",⇗: "&9",↙: "S&1",↓: "S&2",↘: "S&3",←: "S&4",↕: "S&5",→: "S&6",↖: "S&7",↑: "S&8",↗: "S&9",⇔: "S&S",↔: "SS&S",↧: "SS&2",↤: "SS&4",↦: "SS&6",↥: "SS&8"}
	GreekMaj := {Α: "&A",Β: "&B",Γ: "&G",Δ: "&D",Ε: "&E",Ζ: "&Z",Η: "&H",Θ: "&Th",Ι: "&I",Κ: "&K",Λ: "&L",Μ: "&M",Ν: "&N",Ξ: "&X",Π: "&P",Ρ: "&R",Σ: "&S",Τ: "&T",Υ: "&U",Φ: "&F",Χ: "&Q",Ψ: "&Ps",Ω: "&O",Ϝ: "&Gf"}
	GreekMin := {α: "&a",β: "&b",γ: "&g",δ: "&d",ε: "&e",ϵ: "&ef",ζ: "&z",η: "&h",θ: "&th",ϑ: "&thf",ι: "&i",κ: "&k",ϰ: "&kf",λ: "&l",μ: "&m",ν: "&n",ξ: "&x",π: "&p",ρ: "&r",σ: "&s",τ: "&t",υ: "&u",φ: "&f",ϕ: "&ff",χ: "&q",ψ: "&ps",ω: "&o",ϛ: "&sf"}
	GCurMenu := {"€": "&E","$": "&S","¢": "&C","£": "&L","₺": "&T","₿": "&B","¥": "&Y","¤":"& "}
	HConvertMenu := {ConvertCap: "&C",ConvertSentence: "&S",Convertlower: "&L",ConvertUPPER: "&U",ConvertiNV: "&I",ConvertRev: "&R",ConvertSwap: "&W"}
	Greetings := ["Hi!","Hello!","&What's up?","How's it going?"]
	HSAutres := ["ƒ","ℓ","‰","–","—","♀","♂","√","∞","¶","¬","♮","♭","×","÷","†","‡","¶","«","»","…"]


	TopMenu := {1MailList: "Mail `t&m`",2MainFMenu:"Numbers`t&n`",ArrowsA: "Arrows`t&a`",HConvertMenu: "Convert`t&c`",Greetings: "Phrases`t&p`",HSAutres: "Misc.`t&t`",GMainGreekMenu:"Greek `t&g`",GCurMenu: "Currency`t&$`"} ; '" for higlighting fix ; Work in progress
	TopMenuFractions := {Fractions1:"Fractions &1",Fractions2: "Fractions &2",Puiss: "&Puissance",Indi: "&Indice"}
	TopMenuGreek := {GreekMaj: "Ma&j",GreekMin: "Mi&n"}
	TopMenuConv := {HConvertMenu: "Convert"}
	TopMenuCur := {GCurMenu: "Currency"}

	TopMenu("GMainGreekMenu","tx",TopMenuGreek*)
	TopMenu("2MainFMenu","tx",TopMenuFractions*)
	TopMenu("MainMenu","tx",TopMenu*)
	TopMenu("MainConvMenu","fn",TopMenuConv*)
	TopMenu("MainCurMenu","tx",TopMenuCur*)

	List := DateFormats(A_Now)
	TextMenuDate(List,"TimeDate","DateAction")
	Menu, MainMenu, Add, Formatted Times/Dates`t&d, :TimeDate
Return

PreadGPT:
	OldClipboard := ClipboardAll
	Clipboard :=  ;clears the Clipboard
	Send, ^c
	ClipWait 1
	Run, https:/chat.openai.com
	Clipboard := "Reformuler ce texte pour qu'il puisse être intégré dans un courrier d'hospitalisation avec une tonalité médicale dans un style concis, sans toutefois être télégraphique. Je voudrais une version prête à intégrer au courrier d'hospitalisation.`nLes données doivent être ordonnées dans les catégories suivantes : Motif d'hospitalisation/Histoire de la maladie/Antécédents/Facteurs de risques cardiovasculaire/Allergies/Traitement à l'entrée/Mode de vie.`nQuand les données sont suffisantes, calculer l'IMC et le nombre de paquets-années du tabagisme.`nLes facteurs de risque présents doivent être classés dans cet ordre : HTA/diabète/dyslipidémie/tabagisme/hérédité/statut pondéral avec taille-poids-IMC/autres, les facteurs de risques non énoncés sont considérés comme absents, les facteurs de risques absents doivent être énoncés en dernier dans le même alinéa (par exemple : Absence d'HTA et de diabète), les facteurs de risque doivent être regroupés avec la biologie adéquate quand celle-ci est présente (par exemple dyslipidémie : dernier LDL xx g/l en juillet 2025). Si un facteur de risque est également listé dans les antécédents, ne le mettre uniquement que dans la section facteurs de risque.`n`nPatient " . Clipboard
	Sleep 5000
	Send ^v
Return

CorInit:
	If WinActive("ahk_exe WINWORD.exe") OR WinActive("ahk_exe wfica32.exe") {
		LastCorEnd = 0
		LastCorEndCheck = 7
		CorEnd = 0
		CorSleep = 1
		GoSub, CorMute
		Send ^h
		Sleep 100
		InitOk = 1
	} Else {
		SToolTip("You're not in Word",3000,2)
		InitOk = 0
	}
Return

CorCourrier:
	GoSub, CorInit
	If InitOk = 1 
	{
		SToolTip("Correction du courrier...",3000,2)
		CorrigeEspace()
		CorrigeEspaceClean()
		CorrigeOrdo()
		CorrigeTtt2()
		CorrigeTttCr()
		CorrigeComprim()
		CorrigeEspace()
		CorrigeEspaceClean()
		LastCorEnd = 2
		CorrigeEntete()
		LastCorEnd = 1
	}
Return

CorCourSimple:
	GoSub, CorInit
	If InitOk = 1
	{
		SToolTip("Correction simple du courrier...",3000,2)
		CorrigeOrdOsiris()
		LastCorEnd = 2
		CorrigeEspace()
		LastCorEnd = 1
	}
Return

CorOrdo:
	GoSub, CorInit
	If InitOk = 1
	{
		SToolTip("Correction de l'ordonnance...",3000,2)
		Send {^}{p}{^}{p}{Tab}{^}{p}
		WaitEnter()
		CorrigeEspace()
		CorrigeEspaceClean()
		CorrigeOrdo()
		CorrigeTtt1()
		CorrigeTtt2()
		CorrigeComprim()
		Corrige30j()
		Send 21{^}{p}Docteur XXX{Tab}21{^}{p}Docteur XXX{^}{p}{^}{p}Traitement pour 1 mois. À renouveler par le médecin traitant.
		WaitEnter()
		CorrigeEspace()
		LastCorEnd = 2
		CorrigeEspaceClean()
		LastCorEnd = 1
	}
Return

CorEspace:
	GoSub, CorInit
	If InitOk = 1
	{
		SToolTip("Correction des espaces...",3000,2)
		CorrigeEspace()
		LastCorEnd = 2
		CorrigeEspaceClean()
;		CorrigeEntete()
		LastCorEnd = 1
	}
Return

Cor30j:
	GoSub, CorInit
	If InitOk = 1
	{
		SToolTip("Correction des 30j...",3000,2)
		Send ^h
		Sleep 100
		LastCorEnd = 2
		Corrige30j()
		LastCorEnd = 1
	}
Return

CorrigeCustom:
	SToolTip("Correction personnalisée...",3000,2)
	CorOrdoSel = 0
	CorEspaceSel = 0
	CorEspaceCleanSel = 0
	CorTtt1Sel = 0
	CorTtt2Sel = 0
	CorTttCrSel = 0
	CorComprimSel = 0
	CorEnteteSel = 0
		msgbox % GetText("Getting a text")
	Sleep 1000
	GoSub, CorInit
	If InitOk = 1
	{
		If CorOrdoSel = 1
			CorrigeOrdo()
		If CorEspaceSel = 1
			CorrigeEspace()
		If CorEspaceCleanSel = 1
			CorrigeEspaceClean()
		If CorOrdoSel = 1
			CorrigeOrdo()
		CorrigeOrdo()
		If CorTtt1Sel = 1
			CorrigeTtt1()
		If CorTtt2Sel = 1
			CorrigeTtt2()
		If CorTttCrSel = 1
			CorrigeTttCr()
		If CorComprimSel = 1
			CorrigeComprim()
		If CorEspaceSel = 1
			CorrigeEspace()
		If CorEspaceCleanSel = 1
			CorrigeEspaceClean()
		LastCorEnd = 2
		If CorEnteteSel = 1
			CorrigeEntete()
		LastCorEnd = 1
	}
Return

Corrige30j() {
	CorSleep = 4
	Send {Space}pendant 30 jour(s){^}{p}{^}{p}{Tab}{^}{p}
	WaitEnter()
	Send {Space}pendant 30 jour(s){^}{p}{Tab}{^}{p}
	WaitEnter()
	Send {^}{t}pendant 30 jour(s){^}{p}{Tab}{^}{p}
	WaitEnter()
	Send pendant 30 jours{Tab}{BS}
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

Corrige30j2() {
	CorSleep = 4
	Send {Space}pendant 30 jour(s){^}{p}{^}{p}{Tab}{^}{p}
	WaitEnter()
	Send {Space}pendant 30 jour(s){^}{p}{Tab}{^}{p}
	WaitEnter()
	Send {^}{t}pendant 30 jour(s){^}{p}{Tab}{^}{p}
	WaitEnter()
	Send pendant 30 jours{Tab}{BS}
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeOrdo() {
	CorSleep = 27
	Send (LABO ACCORD){Tab}{BS}
	WaitEnter()
	Send (LABO ACCORD HEALTHCARE){Tab}{BS}
	WaitEnter()
	Send (LABO ALMUS){Tab}{BS}
	WaitEnter()
	Send (LABO ARROW GENERIQUES){Tab}{BS}
	WaitEnter()
	Send (LABO ARROW){Tab}{BS}
	WaitEnter()
	Send (LABO ARROW LAB){Tab}{BS}
	WaitEnter()
	Send (METFORMINE LABO ARROW LAB){Tab}{BS}
	WaitEnter()
	Send (PERINDOPRIL LABO ARROW GENERIQUES){Tab}{BS}
	WaitEnter()
	Send ARROW LAB{Tab}{BS}
	WaitEnter()
	Send (LABO B BRAUN){Tab}{BS}
	WaitEnter()
	Send (LABO BIOGARAN){Tab}{BS}
	WaitEnter()
	Send (LABO BLUEFISH){Tab}{BS}
	WaitEnter()
	Send (LABO CCD){Tab}{BS}
	WaitEnter()
	Send (LABO EG){Tab}{BS}
	WaitEnter()
	Send (VITAMINE B12 LABO GERDA){Tab}{BS}
	WaitEnter()
	Send (LABO MYLAN){Tab}{BS}
	WaitEnter()
	Send (LABO MYLAN PHARMA){Tab}{BS}
	WaitEnter()
	Send (METFORMINE LABO MYLAN){Tab}{BS}
	WaitEnter()
	Send GLICLAZIDE LABO MYLAN{Tab}{BS}
	WaitEnter()
	Send LABO NATIVELLE{Tab}{BS}
	WaitEnter()
	Send (LABO PANPHARMA){Tab}{BS}
	WaitEnter()
	Send (LABO QUIVER LAB){Tab}{BS}
	WaitEnter()
	Send (LABO RPG){Tab}{BS}
	WaitEnter()
	Send (LABO SANDOZ){Tab}{BS}
	WaitEnter()
	Send (PERINDOPRIL LABO SANDOZ){Tab}{BS}
	WaitEnter()
	Send (LABO STRAGEN){Tab}{BS}
	WaitEnter()
	Send (LABO TEVA){Tab}{BS}
	WaitEnter()
	Send (LABO TEVA SANTE){Tab}{BS}
	WaitEnter()
	Send (LABO VIATRIS){Tab}{BS}
	WaitEnter()
	Send (LABO ZENTIVA LAB){Tab}{BS}
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeTtt1() {
	CorSleep = 19
	Send par Voie  ORALE{Tab}par Voie ORALE
	WaitEnter()
	Send CPR par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR SÉC par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR QUADRISÉC par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR GASTRO-RÉSISTANT par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR ORODISPERSIBLE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR À LIBÉRATION PROLONGÉE{^}{p}{Tab}{BS}
	WaitEnter()
	Send CPR SÉC À LIBÉRATION MODIFIÉE{^}{p}{Tab}{BS}
	WaitEnter()
	Send GELULE par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send GÉLULE par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send GÉLULE À LIBÉRATION PROLONGÉE{^}{p}{Tab}{BS}
	WaitEnter()
	Send GÉLULE GASTRO-RÉSISTANTE{^}{p}{Tab}{BS}
	WaitEnter()
	Send SACHET par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	Send RÉCIPIENT UNIDOSE {^}{p}{Tab}{BS}
	WaitEnter()
	Send PDR PR SOL BUV{^}{p}{Tab}{BS}
	WaitEnter()
	Send {Space}DISPOSITIf TRANSDERMIQUE par VOIE TRANSDERMIQUE{^}{p}{Tab}{BS}
	WaitEnter()
	Send par VOIE INHALÉE{^}{p}{Tab}par VOIE INHALÉE
	WaitEnter()
	Send par VOIE OPHTALMIQUE{^}{p}{Tab}par VOIE OPHTALMIQUE
	WaitEnter()
	Send par Voie ORALE{^}{p}{Tab}{BS}
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeTtt2() {
	CorSleep = 11
	Send à renouveler deux fois{Tab}{BS}
	WaitEnter()
	Send unité internationale{Tab}UI
	WaitEnter()
	Send 1 comprimé Matin, 1 comprimé Midi, 1 comprimé Soir{Tab}1 comprimé Matin, Midi et Soir
	WaitEnter()
	Send 1 comprimé Matin, 1 comprimé Soir{Tab}1 comprimé Matin et Soir
	WaitEnter()
	Send 1 comprimé Matin, 1 comprimé Midi{Tab}1 comprimé Matin et Midi
	WaitEnter()
	Send 1 comprimé Midi, 1 comprimé Soir{Tab}1 comprimé Midi et Soir
	WaitEnter()
	Send 1 gélule Matin, 1 gélule Midi, 1 gélule Soir{Tab}1 gélule Matin, Midi et Soir
	WaitEnter()
	Send 1 gélule Matin, 1 gélule Soir{Tab}1 gélule Matin et Soir
	WaitEnter()
	Send 1 gélule Matin, 1 gélule Midi{Tab}1 gélule Matin et Midi
	WaitEnter()
	Send 1 gélule Midi, 1 gélule Soir{Tab}1 gélule Midi et Soir
	WaitEnter()
	Send 1 récipient doseur à 08h, 1 récipient doseur à 12h, 1 récipient doseur à 16h, 1 récipient doseur à 20h{Tab}1 dose à 08h, 12h, 16h et 20h
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeTttCr() {
	CorSleep = 14
	Send -0-0{Tab} le Matin
	WaitEnter()
	Send .0.0
	WaitEnter()
	Send 0-1-0{Tab}1 le Midi
	WaitEnter()
	Send 0.1.0
	WaitEnter()
	Send 0-0-1{Tab}1 le Soir
	WaitEnter()
	Send 0.0.1
	WaitEnter()
	Send 1-1-0{Tab}1 Matin et Midi
	WaitEnter()
	Send 1.1.0
	WaitEnter()
	Send 1-0-1{Tab}1 Matin et Soir
	WaitEnter()
	Send 1.0.1
	WaitEnter()
	Send 0-1-1{Tab}1 Midi et Soir
	WaitEnter()
	Send 0.1.1
	WaitEnter()
	Send 1-1-1{Tab}1 Matin, Midi et Soir
	WaitEnter()
	Send 1.1.1
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeEspace() {
;	Send :{Tab}{Space}:{Space}
;	WaitEnter()
;	Send .{Tab}.{Space}
;	WaitEnter()
	CorSleep = 37
	CorrigeEspace2()
	Send {,}{Space}{^}{p}{Tab}{^}{p}
	WaitEnter()
	WaitEnter()
	Send {,}{^}{p}{Tab}{^}{p}
	WaitEnter()
	WaitEnter()
	Send {;} {;}{Tab}{;}
	WaitEnter()
	WaitEnter()
	Send {;} {;}{Tab}{;}
	WaitEnter()
	WaitEnter()
	Send {;}{;}{Tab}{;}
	WaitEnter()
	WaitEnter()
	Send {;}{;}{Tab}{;}
	WaitEnter()
	WaitEnter()
	Send {^}{t}{^}{p}{Tab}{^}{p}
	WaitEnter()
	WaitEnter()
	Send {(}{Space}{Tab}{(}
	WaitEnter()
	WaitEnter()
	Send {Space}{)}{Tab}{)}
	WaitEnter()
	WaitEnter()
	Send {:}{Space}{:}{Tab}{:}
	WaitEnter()
	WaitEnter()
	Send {:}{:}{Tab}{:}
	WaitEnter()
	WaitEnter()
	Send ¿{Tab}’
	WaitEnter()
	WaitEnter()
	Send {Space}.{Tab}.
	WaitEnter()
	WaitEnter()
	CorrigeEspace2()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeEspace2() {
	Send {Space}{Space}{Tab}{Space}
	WaitEnter()
	WaitEnter()
	WaitEnter()
	WaitEnter()
	Send {Space},{Tab},
	WaitEnter()
	WaitEnter()
}

CorrigeEspaceClean() {
	CorSleep = 14
	Send {^}{p}{Space}{Tab}{^}{p}
	WaitEnter()
	WaitEnter()
	Send {^}{t}{Space}{Tab}{^}{t}
	WaitEnter()
	WaitEnter()
	Send {Space}{^}{p}{Tab}{^}{p}
	WaitEnter()
	WaitEnter()
	Send {Space}{^}{t}{Tab}{^}{t}
	WaitEnter()
	WaitEnter()
	Send {Space}{^}p{Tab}{^}p
	WaitEnter()
	WaitEnter()
	WaitEnter()
	Send {^}{p}{^}{p}{^}{p}{Tab}{^}{p}{^}{p}
	WaitEnter()
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeEntete() {
	CorSleep = 8
	Send mgr{Tab}mg
	WaitEnter()
	Send gr/{Tab}g/
	WaitEnter()
	Send . fr{Tab}.fr
	WaitEnter()
	Send . com{Tab}.com
	WaitEnter()
	Send . net{Tab}.net
	WaitEnter()
	Send TAPSE : mm.{Tab}TAPSE :
	WaitEnter()
	Send Echocardiographie, ETT. du{Tab}Échocardiographie transthoracique du
	WaitEnter()
	Send {^}p{^}pN° FINESS{Tab}{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p{^}p	N° FINESS
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeComprim() {
	CorSleep = 4
	Send 2 comprimé(s){Tab}2 comprimés
	WaitEnter()
	Send 3 comprimé(s){Tab}3 comprimés
	WaitEnter()
	Send 2 gélule(s){Tab}2 gélules
	WaitEnter()
	Send 3 gélule(s){Tab}3 gélules
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeOrdOsiris() {
	CorSleep = 6
	Send  • {Tab}{Del}{^}p
	WaitEnter()
	Send • {Tab}{Del}
	WaitEnter()
	Send , comprimé pelliculé{Tab}{Del}
	WaitEnter()
	Send , comprimé sécable{Tab}{Del}
	WaitEnter()
	Send , comprimé{Tab}{Del}
	WaitEnter()
	Send  - Voie : orale{Tab}{Del}
	WaitEnter()
	Send  - Voie prescrite : orale{Tab}{Del}
	WaitEnter()
	Send Médicament à risque (MHR){Tab}{Del}
	WaitEnter()
	Send 1 comprimé - 8 h // 1 - 18 h{Tab}1 cp matin et soir
	WaitEnter()
	Send - 8 h{Tab}cp matin
	WaitEnter()
	Send - 12 h{Tab}cp midi
	WaitEnter()
	Send - 18 h{Tab}cp soir
	WaitEnter()
	Send - 20 h{Tab}cp soir
	WaitEnter()
	Send poudre pour solution buvable en sachet-dose{Tab}{Del}
	WaitEnter()
	Send Tous les jours - TTF^p{Tab}{Del}
	WaitEnter()
	Send Tous les jours – TTF^p{Tab}{Del}
	WaitEnter()
	Send Tous les jours, pendant 28 jours{Tab}{Del}
	WaitEnter()
	Send - A commencer le \"*\"{Tab}{Del}
	Sleep 100
	Send !g
	WaitEnter()
	Send !g
	WaitEnter()
	If ((LastCorEnd == 1) OR (LastCorEnd == 2)) {
		LastCorEndCheck := LastCorEnd+2
	} Else {
	LastCorEndCheck = 0
	}
	GoSub, CheckCorEnd
}

CorrigeSel() {
	Send ^c
	ClipWait 2
	Send ^h
	Sleep 100
	Send ^v{Tab}{BS}
	WaitEnter()
	GoSub, CheckCorEnd
}

EscWait:
	If (GetKeyState("Escape", "P"))
	{
		Exit
	} Else
		Sleep 50
Return

CorMute:
	If (FirstPass==1)
	{
		global FirstPass:= 0
	} Else {
		If ((CorEnd == 2) AND (LastCorEndCheck > 2)) {
			Send {Escape}
			CorSleep2 := (CorSleep + 2 ) * 180
			Sleep %CorSleep2%
			global FirstPass:= 1
			CorEnd = 0
		}
		Else If ((CorEnd == 1) OR ((CorEnd == 2) AND (LastCorEndCheck < 2)))
		{
			If (GetKeyState("Escape"))
			{
				GoSub, CheckCorEnd
			}
			GoSub, CheckCorEnd
		}
	}
Return

CheckCorEnd:
	If (CorEnd == 2)
	{
		GoSub, CorMute
	}
	Else If (LastCorEnd == 1)
	{
		CorEnd = 2
		GoSub, CorMute
	}
	Else If (LastCorEnd == 2)
	{
		CorEnd = 1
		LastCorEnd = 1
		GoSub, CorMute
	} Else {
		CorEnd = 0
	}
Return

Traymenu:
	Menu,Tray,DeleteAll ;fresh start
	Menu,Tray,NoStandard
	Menu,Tray,Tip,%applicationname%

	Loop,%menucount% ;custom menu items - item can be spacer
		Menu,Tray,Add,% item_Menu_%A_Index%,APPLYMENUITEM
	If menucount>0 ;spacer before standard menu items
		Menu,Tray,Add,
	Menu, Tray, MainWindow
	{
		Menu, Tray, Add
	}
	Menu, Tray, Add, &Reload, GoReload
	Menu, Tray, Add, Edit &Configuration, EditConfig
	Menu, Tray, Add
	Menu, Tray, Add, &Help, TrayHelp
	Menu, Tray, Add, &Suspend, TraySuspend
	Menu, Tray, Add, E&xit, TrayExit

	OnMessage(0x404, "AHK_NOTIFYICON")
Return

PriorPrior:
ih := InputHook()
ih.KeyOpt("{All}", "NV")
ih.OnKeyDown := Func("priorKeyHandler")
ih.BackspaceIsUndo := false
ih.Start()
Return

priorKeyHandler(ih, vk, sc) {
	global PriorKeys

	vk := Format("vk{:x}", vk)
	sc := Format("sc{:x}", sc)
	name := GetKeyName(vk sc)

	PriorKeys.InsertAt(1, {name: (name != "") ? name : "undefined", vk: vk, sc: sc})
}

Display2PriorKey:
	ToolTip, % PriorKeys[2].name "`n" PriorKeys[2].vk "`n" PriorKeys[2].sc "`n Prior " A_PriorKey " hot " A_PriorHotKey
Return


AHK_NOTIFYICON(wParam,lParam) {
	If lParam = 0x203	; WM_LBUTTONDBLCLK
		GoSub, GoReload
	Else If lParam = 0x206	; WM_RBUTTONDBLCLK
		GoSub, GoReload
	Else If lParam = 0x208	; WM_MBUTTONUP
		Suspend
	; Else If lParam = 0x209	; WM_MBUTTONDBLCLK := 0x209
		; GoSub, GoReload
	; Else If lParam = 0x205	; WM_RBUTTONUP
		; Menu, Tray, Show	; Show the tray menu
Return
}

GoReload:
	SToolTip("Reloading...",2000,1,,,, "s24",, "00007f", "7fff00")
	Reload
Return

Sortie:
	ExitApp
Return

Slep(time) {
	j := time / 10
	While A_index < j
		Sleep 10
}

SToolTip(text, time:= 1000, ttlevel:= 1, x:= "", y:= "", rest:= "", size:= "s12", fnt:= "calibri", bg:= "e0e0e0", txt:= "202020", delay:= 0, lastTTdelayed:= 0) ;timedFunction
{
	tc:= A_TickCount
	elapsed:=A_TickCount - StartTime2
	If (lastTTdelayed = 1)
	{
		elapsed2:=A_TickCount - StartTime2
		If (elapsed2 < globaldelay OR elapsed < globaldelay)
		{
			text := ""
			y := x := rest := 0
			time := 1
			size := "s1"
			; ttlevel := 5
		}
	}
	; Loop
	; {
		; If ((A_TickCount-tc) > delay)
			; break
	; }
	If (time = "m" OR time = "c")
	{
		rest:=time
		time:=1000
	}
	If (ttlevel = "m" OR ttlevel = "c")
	{
		rest:=ttlevel
		ttlevel:=1
	}
	If (rest = "m") {
		CoordMode, ToolTip, Mouse
		MouseGetPos, xpos, ypos
		If (x != "m" AND x != "c" AND x != "d")
			x:=x+xpos
		If (y != "m" AND y != "c" AND y != "b")
			y:=y+ypos
	}
	Else If (rest = "c")
	{
		CoordMode, ToolTip, Caret
		If (x != "m" AND x != "c")
			y:=y+A_CaretY
		If (y != "m" AND y != "c")
			x:=x+A_CaretX
	}
	Else
	{
		CoordMode, ToolTip, Screen
	}
	If (x = "m" OR x = "c")
	{
		x:=A_ScreenWidth/2-(StrLen(text)*(RegExReplace(size, "\D")-4)/2)
	}
	Else If (x = "d")
	{
		x:=A_ScreenWidth
	}
	If (y = "m" OR y = "c")
	{
		y:=A_ScreenHeight/2-((RegExReplace(size, "\D")-4)+2)
	}
	Else If (y = "b")
	{
		y:=A_ScreenHeight
	}

	ToolTipFont( size , fnt )
	ToolTipColor( bg , txt )
	If (size <> "" OR fnt <> "" OR bg <> "" OR txt <> "")
	{
		ToolTip, .,,,ttlevel ; dummy to clear previous and ensure color
	}
	ToolTip, %text%,x,y,ttlevel
	If time != 0
		SetTimer, RemoveToolTip%ttlevel%,% time? -time:"Off" ;(-) run only once
;	{
;		funcRTT := Func("RemoveToolTip").Bind(ttlevel)
;		SetTimer, % funcRTT,% time? -time:"Off" ;(-) run only once
;	}
	ToolTipFont()
	ToolTipColor()
	If time != 0
		SetTimer,, Off

	; If (size <> "" OR fnt <> "" OR bg <> "" OR txt <> "")
	; {
	; ToolTip, .,,,ttlevel
	; }
}

DelayedSToolTip(delay:= 0, text:= "", time:= 1000, ttlevel:= 1, x:= "", y:= "", rest:= "", size:= "s12", fnt:= "calibri", bg:= "e0e0e0", txt:= "202020", lastTTdelayed := 1)
{
	StartTime2 := A_TickCount
	globaldelay:=delay
	DelayedSTT := Func("SToolTip").bind(text, time, ttlevel, x, y, rest, size, fnt, bg, txt, delay, 1)
	SetTimer, %DelayedSTT%, %delay%
}

ToolTipFont(Options := "s12", Name := "Calibri", hwnd := "") {
	static hfont := 0
	If (hwnd = "")
	{
	If (Options != "")
		hfont := Options="" ? 0 : _TTG("Font", Options, Name), _TTHook()
	If (Name != "")
		hfont := Options="" ? 0 : _TTG("Font", Options, Name), _TTHook()
	}
	Else
		DllCall("SendMessage", "ptr", hwnd, "uint", 0x30, "ptr", hfont, "ptr", 0)
}

ToolTipColor(Background := "BFBFBF", Text := "3F3F3F", hwnd := "") {
	static bc := "", tc := ""
	If (hwnd = "") {
		If (Background != "")
			bc := Background="Default" ? "" : _TTG("Color", Background)
		If (Text != "")
			tc := Text="Default" ? "" : _TTG("Color", Text)
		_TTHook()
	}
	Else {
		VarSetCapacity(empty, 2, 0)
		DllCall("UxTheme.dll\SetWindowTheme", "ptr", hwnd, "ptr", 0
			, "ptr", (bc != "" && tc != "") ? &empty : 0)
		If (bc != "")
			DllCall("SendMessage", "ptr", hwnd, "uint", 1043, "ptr", bc, "ptr", 0)
		If (tc != "")
			DllCall("SendMessage", "ptr", hwnd, "uint", 1044, "ptr", tc, "ptr", 0)
	}
}

_TTHook() {
	static hook := 0
	If !hook
		hook := DllCall("SetWindowsHookExW", "int", 4
			, "ptr", RegisterCallback("_TTWndProc"), "ptr", 0
			, "uint", DllCall("GetCurrentThreadId"), "ptr")
}
 
_TTWndProc(nCode, _wp, _lp) {
	Critical 999
	; lParam := NumGet(_lp+0*A_PtrSize)
	; wParam := NumGet(_lp+1*A_PtrSize)
	uMsg := NumGet(_lp+2*A_PtrSize, "uint")
	hwnd := NumGet(_lp+3*A_PtrSize)
	If (nCode >= 0 && (uMsg = 1081 || uMsg = 1036)) {
		_hack_ = ahk_id %hwnd%
		WinGetClass wclass, %_hack_%
		If (wclass = "tooltips_class32") {
			ToolTipColor(,, hwnd)
			ToolTipFont(,, hwnd)
		}
	}
	Return DllCall("CallNextHookEx", "ptr", 0, "int", nCode, "ptr", _wp, "ptr", _lp, "ptr")
}
 
_TTG(Cmd, Arg1, Arg2 := "") {
	static htext := 0, hgui := 0
	If !htext {
		Gui _TTG: Add, Text, +hwndhtext
		Gui _TTG: +hwndhgui +0x40000000
	}
	Gui _TTG: %Cmd%, %Arg1%, %Arg2%
	If (Cmd = "Font") {
		GuiControl _TTG: Font, %htext%
		SendMessage 0x31, 0, 0,, ahk_id %htext%
		Return ErrorLevel
	}
	If (Cmd = "Color") {
		hdc := DllCall("GetDC", "ptr", htext, "ptr")
		SendMessage 0x138, hdc, htext,, ahk_id %hgui%
		clr := DllCall("GetBkColor", "ptr", hdc, "uint")
		DllCall("ReleaseDC", "ptr", htext, "ptr", hdc)
		Return clr
	}
}

RemoveToolTip(num)
{
	ToolTip,,,,%num%
}

RemoveToolTip:
Loop, 20 { 
	ToolTip,,,,%A_Index%
}
Return
RemoveToolTip0:
	ToolTip,,,,0
Return
RemoveToolTip1:
	ToolTip,,,,1
Return
RemoveToolTip2:
	ToolTip,,,,2
Return
RemoveToolTip3:
	ToolTip,,,,3
Return
RemoveToolTip4:
	ToolTip,,,,4
Return
RemoveToolTip5:
	ToolTip,,,,5
Return
RemoveToolTip6:
	ToolTip,,,,6
Return
RemoveToolTip7:
	ToolTip,,,,7
Return
RemoveToolTip8:
	ToolTip,,,,8
Return
RemoveToolTip9:
	ToolTip,,,,9
Return
RemoveToolTip10:
	ToolTip,,,,10
Return

Rvar(vararecup)
{
	Return vararecup
}

;hotcorners
CheckMouseXPosition(){
	CoordMode, Mouse, Screen
	MouseGetPos , MouseXFullScreenHotkey, MouseYFullScreenHotkey
	If (MouseXFullScreenHotkey < (-A_ScreenWidth + 5))
		Return 1 ; Left of Left Screen
	Else If (MouseXFullScreenHotkey > (2 * A_ScreenWidth - 5))
		Return 5 ; Right of Right Screen // considered same resolution
	Else If (MouseXFullScreenHotkey < -1075) AND (MouseXFullScreenHotkey >= -1080)
		Return 1 ; Left of Vertical Left Screen
	Else If (MouseXFullScreenHotkey < -5)
		Return 6 ; Outside Left of Main Screen
	Else If (MouseXFullScreenHotkey > (A_ScreenWidth + 5))
		Return 7 ; Outside Right of Main Screen
	Else If (MouseXFullScreenHotkey <= 5)
		Return 1 ; Left Edge
	Else If (MouseXFullScreenHotkey > 5) AND (MouseXFullScreenHotkey < (A_ScreenWidth - 5))
	{
		If (MouseXFullScreenHotkey < (A_ScreenWidth/3))
			Return 2 ; Inside Left
		Else If (MouseXFullScreenHotkey > (2*A_ScreenWidth/3))
			Return 4 ; Inside Right
		Else
			Return 3 ; Inside Center
	}
	Else If (MouseXFullScreenHotkey >= (A_ScreenWidth - 5)) AND (MouseXFullScreenHotkey <= (A_ScreenWidth + 5))
		Return 5 ; Right Edge
	Else
		Return 0 ; Just in case
}

CheckMouseYPosition(){
	CoordMode, Mouse, Screen
	MouseGetPos , MouseXFullScreenHotkey, MouseYFullScreenHotkey
	If (MouseYFullScreenHotkey < (-A_ScreenHeight + 5))
		Return 1 ; Top of Top Screen
	Else If ((MouseYFullScreenHotkey > (2 * A_ScreenHeight - 5))) ; OR ((MouseYFullScreenHotkey < A_ScreenHeight + 520) AND (MouseYFullScreenHotkey > A_ScreenHeight + 510)))
		Return 5 ; Bottom of Bottom Screen // Screenpad or considered same resolution
	Else If (MouseYFullScreenHotkey < -5)
		Return 6 ; Outside Up of Main Screen
	Else If (MouseYFullScreenHotkey > (A_ScreenHeight + 5))
		Return 7 ; Outside Bottom of Main Screen
	Else If (MouseYFullScreenHotkey <= 5)
		Return 1 ; Top Edge
	Else If (MouseYFullScreenHotkey > 5) AND (MouseYFullScreenHotkey < (A_ScreenHeight - 5))
	{
		If (MouseYFullScreenHotkey < (A_ScreenHeight/3))
			Return 2 ; Inside Top
		Else If (MouseYFullScreenHotkey > (2*A_ScreenHeight/3))
			Return 4 ; Inside Bottom
		Else
			Return 3 ; Inside Center
	}
	Else If (MouseYFullScreenHotkey >= (A_ScreenHeight - 5)) AND (MouseYFullScreenHotkey <= (A_ScreenHeight + 5))
		Return 5 ; Bottom Edge
	Else
		Return 0 ; Just in case
}

CheckMousePosition(){
	If ((CheckMouseYPosition() = 1) AND (CheckMouseXPosition() != 1) AND (CheckMouseXPosition() != 5))
		Return 10 ; Top Edge
	Else If ((CheckMouseYPosition() = 5) AND (CheckMouseXPosition() != 1) AND (CheckMouseXPosition() != 5))
		Return 50 ; Bottom Edge
	Else If WinExist("sharemouse.exe")
	{
		Return 00
	} Else If ((CheckMouseXPosition() = 1) AND (CheckMouseYPosition() != 1) AND (CheckMouseYPosition() != 5))
		Return 01 ; Left Edge
	Else If ((CheckMouseXPosition() = 5) AND (CheckMouseYPosition() != 1) AND (CheckMouseYPosition() != 5))
		Return 05 ; Right Edge
	Else
		Return CheckMouseYPosition() . CheckMouseXPosition()
}

Adef:
	SToolTip("A Définir",3000,3)
Return

Recherche:
	OldClipboard := ClipboardAll
	Clipboard :=  ;clears the Clipboard
	Send, ^c
	ClipWait 1
	Run, http://www.google.com/search?q=%Clipboard%
	Clipboard := OldClipboard
Return

;CapsLock
CheckCaps:
	If DefaultMode = 0
	{
		If GetKeyState("CapsLock", "T")
		{
			If (CapsSet = "")
			{
				CapsSet := "milieu"
				Menu, Tray, Icon, shell32.dll, 271 ; this changes the tray icon to a little server!
				GoSub, SetCapsOff
			}
			Else If (CapsSet = "milieu")
			{
				GoSub, SetCapsOff
			}
			Else
			{
				If (A_priorkey = "&" OR A_priorkey = "é" OR A_priorkey = """" OR A_priorkey = "'" OR A_priorkey = "(" OR A_priorkey = "-" OR A_priorkey = "è" OR A_priorkey = "_" OR A_priorkey = "ç" OR A_priorkey = "à")
				{
					If (A_TimeIdleKeyboard>12000)
						GoSub, SetCapsOff
				}
				Else
				{
					If (A_TimeIdleKeyboard>6000)
						GoSub, SetCapsOff
				}
			}
		}
		If (NumMode = 1)
		{
			If (A_priorkey = "&" OR A_priorkey = "é" OR A_priorkey = """" OR A_priorkey = "a" OR A_priorkey = "z" OR A_priorkey = "e" OR A_priorkey = "r" OR A_priorkey = "q" OR A_priorkey = "s" OR A_priorkey = "d" OR A_priorkey = "f" OR A_priorkey = "w" OR A_priorkey = "x" OR A_priorkey = "c" OR A_priorkey = "v")
			{
				If (A_TimeIdleKeyboard>12000)
					GoSub, NumModeOff
			}
			Else
			{
				If (A_TimeIdleKeyboard>6000)
					GoSub, NumModeOff
			}
		}
	}
Return

SwitchToDefaultMode:
	If DefaultMode = 0
	{
		DefaultMode := 1
		SetNumLockState, On
		SToolTip("Default on",3000,1,,,, "s24",, "000000", "ffffff")
		DelayedSToolTip(3000,"Default on",30000,1,"m",A_ScreenHeight-100,, "s32",, "000000", "ffffff")
		Menu, Tray, Icon, shell32.dll, 272 ; this changes the tray icon to a little paper with red cross!
	} Else {
		DefaultMode := 0
		SetNumLockState, AlwaysOn
		GoSub SetCapsOff
	}
Return

SetCapsSwitch:
	If (CapsSet = "oui")
		GoSub, SetCapsOff
	Else
		GoSub, SetCapsOn
Return

SetCapsOn:
	CapsSet := "oui"
	SetCapsLockState, On
	SToolTip("Caps on",3000,1,,,, "s24",, "007fff", "ff7f00")
	DelayedSToolTip(3000,"Caps on",30000,1,"m",A_ScreenHeight-100,, "s32",, "007fff", "ff7f00")
	Menu, Tray, Icon, shell32.dll, 76 ; this changes the tray icon to a little paper with cap letters!
	SetTimer, CheckCaps, 2000
Return

SetCapsOff:
	SToolTip("Caps off",3000,1,,,, "s24",, "ff7f00", "007fff")
	DelayedSToolTip(3000,"Caps off",2000,1,"m",A_ScreenHeight-100,, "s32",, "ff7f00", "007fff")
SetCapsOffLaunch:
	CapsSet := ""
	SetCapsLockState, Off
	SetCapsLockState, AlwaysOff
	Menu, Tray, Icon, shell32.dll, 282 ; this changes the tray icon to a little tower!
	SetTimer, CheckCaps, 2000
Return

; Easy Drag windows
EWD_WatchMouse:
	EWD_ButtonState := 1
	For index, EWD_val in EWD_keys ; Loop through the buttons to check
		EWD_ButtonState &= GetKeyState(EWD_val, "P") ; If button is released, set state to zero
	If !EWD_ButtonState	; Button has been released, so drag is complete.
	{
		SetTimer, EWD_WatchMouse, off
		CoordMode, Mouse
		MouseGetPos, EWD_MouseX, EWD_MouseY
		If (Maxstate = 1)
		{
			WinMaximize, A
			Return
		}
		Else If (CheckMousePosition() = 10) ; top edge
			WinMaximize, A
		Else If (CheckMousePosition() = 50) ; bottom edge
			WinMaximize, A
		Else If (CheckMousePosition() = 01) ; left edge
			WinMove, ahk_id %EWD_MouseWin%,, 0, 0, A_ScreenWidth/2, A_ScreenHeight
		Else If (CheckMousePosition() = 05) ; right edge
			WinMove, ahk_id %EWD_MouseWin%,, A_ScreenWidth/2, 0, A_ScreenWidth/2, A_ScreenHeight
		If ((EWD_MouseX = EWD_MouseStartX) AND (EWD_MouseY = EWD_MouseStartY))
		{
			Thread, Priority, 1
			CoordMode, Mouse, Screen
			MouseClick, MIDDLE
			Return
		}
	}
	GetKeyState, EWD_EscapeState, Escape, P
	If EWD_EscapeState = D	; Escape has been pressed, so drag is cancelled.
	{
		SetTimer, EWD_WatchMouse, off
		WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
		If (Maxstate = 1)
			WinMaximize, A
		Return
	}
	; Otherwise, reposition the window to match the change in mouse coordinates
	; caused by the user having dragged the mouse:
	CoordMode, Mouse
	MouseGetPos, EWD_MouseX, EWD_MouseY
	If (((abs(EWD_MouseX - EWD_MouseStartX)>2) OR (abs(EWD_MouseY - EWD_MouseStartY)>2)) AND Maxstate = 1) {
		WinRestore, A
		WinGetPos, EWD_WinX, EWD_WinY,winW,winH, ahk_id %EWD_MouseWin%
		SetWinDelay, -1		; Makes the below move faster/smoother.
		WinMove, ahk_id %EWD_MouseWin%,, EWD_MouseX - winW/2, EWD_MouseY - winH/2
	}
	WinGetPos, EWD_WinX, EWD_WinY,winW,winH, ahk_id %EWD_MouseWin%
	SetWinDelay, -1		; Makes the below move faster/smoother.
	If ((EWD_MouseWin = "0x40a50") OR (EWD_MouseWin = "0x50a48") OR (EWD_MouseWin = "0x505ca") OR (EWD_MouseWin = "")) ; blacklist : desktop
		Return
	Else
	{
		WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
		EWD_MouseStartX := EWD_MouseX	; Update for the next timer-call to this subroutine.
		EWD_MouseStartY := EWD_MouseY
	}
Return

EWD_ResizeMouse:
	EWD_ButtonState := 1
	For index, EWD_val in EWD_keys ; Loop through the buttons to check
		EWD_ButtonState &= GetKeyState(EWD_val, "P") ; If button is released, set state to zero "
	If !EWD_ButtonState	; Button has been released, so drag is complete.
		SetTimer, EWD_ResizeMouse, off
	If EWD_MouseWin =
		Return
	CoordMode, Mouse, Relative
	MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
	WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,winW,winH, ahk_id %EWD_MouseWin%
	WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin%
	halfWinW = %winW%
	EnvDiv, halfWinW, 2
	halfWinH = %winH%
	EnvDiv, halfWinH, 2
	If EWD_MouseStartX < %halfWinW%
		MousePosX = left
	Else
		MousePosX = right
	If EWD_MouseStartY < %halfWinH%
		MousePosY = up
	Else
		MousePosY = down
	CoordMode, Mouse, Screen
	MouseGetPos, OLDmouseX, OLDmouseY, EWD_MouseWin
	SetWinDelay, 0 
	If (Maxstate = 1)
	{
		WinRestore, A
	}
	Loop
	{
		For index, EWD_val in EWD_keys ; Loop through the buttons to check
			EWD_ButtonState &= GetKeyState(EWD_val, "P") ; If button is released, set state to zero "
		If !EWD_ButtonState	; Button has been released, so drag is complete.
			break
		MouseGetPos, newMouseX, newMouseY 
		If newMouseX < %OLDmouseX% 
		{ 
			Xdistance = %OLDmouseX% 
			EnvSub, Xdistance, %newMouseX%
			If MousePosX = left ; mouse is on left side of window
			{
				EnvSub, EWD_OriginalPosX, %Xdistance%
				EnvAdd, winW, %Xdistance%
			}
			Else
			{
				EnvSub, winW, %Xdistance%
			}
		} 
		Else If newMouseX > %OLDmouseX% 
		{ 
			; mouse was moved to the right 
			Xdistance = %newMouseX% 
			EnvSub, Xdistance, %OLDmouseX%	
			If MousePosX = left ; mouse is on left side of window
			{
				EnvSub, winW, %Xdistance%
				EnvAdd, EWD_OriginalPosX, %Xdistance% 
			}
			Else
			{
				EnvAdd, winW, %Xdistance%
			}
		}
		OLDmouseX = %newMouseX% 
		If newMouseY < %OLDmouseY% 
		{ 
			Ydistance = %OLDmouseY% 
			EnvSub, Ydistance, %newMouseY%	
			If MousePosY = up ; mouse is on upper side of window
			{
				EnvSub, EWD_OriginalPosY, %Ydistance%
				EnvAdd, winH, %Ydistance%
			}
			Else
			{
				EnvSub, winH, %Ydistance%
			}
		} 
		Else If newMouseY > %OLDmouseY% 
		{ 
			Ydistance = %newMouseY% 
			EnvSub, Ydistance, %OLDmouseY%	
			If MousePosY = up ; mouse is on upper side of window
			{
				EnvAdd, EWD_OriginalPosY, %Ydistance%
				EnvSub, winH, %Ydistance%
			}
			Else
			{
				EnvAdd, winH, %Ydistance%
			}
		} 
		OLDmouseY = %newMouseY%
		WinMove, ahk_id %EWD_MouseWin%,,%EWD_OriginalPosX%,%EWD_OriginalPosY%,%winW%,%winH% 
	}
Return

; MouseWheel
AltFTab:
	GetKeyState, TSW_LAltState, Alt
	GetKeyState("MButton")
	If ( TSW_LAltState = "U" ) or GetKeyState("MButton", "P") {
		Send, {Alt down}+{Tab}
		SetTimer, TSW_WheelHandler, 1
	} Else
		Send, +{Tab}
Return

AltSTab:
	GetKeyState, TSW_LAltState, Alt
	GetKeyState("MButton")
	If ( TSW_LAltState = "U" ) or GetKeyState("MButton", "P") {
		Send, {Alt down}{Tab}
		SetTimer, TSW_WheelHandler, 1
	} Else
		Send, {Tab}
Return

TSW_WheelHandler:
	GetKeyState("MButton")
	If CheckMousePosition() = 10 or GetKeyState("MButton", "P") {
		Return
	} Else {
		SetTimer, TSW_WheelHandler, Off
		GetKeyState, TSW_LAltState, Alt
		If ( TSW_LAltState = "D" )
			Send, {Alt up}
	}
Return

; Case Converter
ConvInit:
	OldClipboard := Clipboard
	Clipboard :=  ; Empty the Clipboard so that ClipWait has something to detect
	clipWork := 
	Send, ^c ;copies selected text
	ClipWait 2
	clipWork := Clipboard
	If ErrorLevel {
		SToolTip("No text selected!",2000,2)
		Return
	}
	Else
		StringReplace, clipWork, clipWork, `r`n, `n, All ;Fix for Send sending Windows linebreaks
Return

ConvPaste:
	Len:= Strlen(clipWork) ;Set number of characters
	Send %clipWork% ;Send new string
	Send +{left %Len%} ;Re-select text
	; VarSetCapacity(OutputText, 0) ;free memory
	Clipboard := OldClipboard ;Restore previous Clipboard
Return

ConvertUpper:
	GoSub, ConvInit
	If clipWork != 
	{
		StringUpper, clipWork, clipWork ;Convert case
		GoSub, ConvPaste
		SToolTip("UPPER CASE",1000,2)
	}
Return

ConvertLower:
	GoSub, ConvInit
	If clipWork != 
	{
		StringLower, clipWork, clipWork ;Convert case
		GoSub, ConvPaste
		SToolTip("lower case",1000,2)
	}
Return

ConvertSentence:
	GoSub, Convinit
	If clipWork != 
	{
		; StringLower, clipWork, clipWork ;Convert case
		clipWork := RegExReplace(clipWork, "(?:^|\.|\R)[- 0-9\*\(]*\K(.)([^\.\r\n]*)", "$U1$L2")
		GoSub, ConvPaste
		SToolTip("Sentence case",1000,2)
	}
Return

ConvertCap:
	GoSub, ConvInit
	If clipWork != 
	{
		StringUpper clipWork, clipWork, T
		GoSub, ConvPaste
		SToolTip("1st Letter Cap",1000,2)
	}
Return

ConvertInv:
	GoSub, ConvInit
	If clipWork != 
	{
		Inv_Char_Out:= ""								; clear variable that will hold output string
		Loop % Strlen(clipWork) {
			; loop for each character in the Clipboard
			Inv_Char:= Substr(clipWork, A_Index, 1)						; isolate the character
			If Inv_Char is upper						; If upper case
			Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) + 32)			; convert to lower case
			Else If Inv_Char is lower					; If lower case
			Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) - 32)			; convert to upper case
			Else
				Inv_Char_Out:= Inv_Char_Out Inv_Char		; copy character to output var unchanged
		}
		Len:= Strlen(clipWork) ;Set number of characters
		Send %Inv_Char_Out%							; send desired text
		Send +{left %Len%} ;Re-select text
		; VarSetCapacity(OutputText, 0) ;free memory
		Clipboard := OldClipboard ;Restore previous Clipboard
		SToolTip("iNVERTED",1000,2)
	}
Return

ConvertRev:
	GoSub, ConvInit
	If clipWork != 
	{
		Temp2 =
		StringReplace, clipWork, clipWork, `r`n, % Chr(29), All
		Loop Parse, clipWork
			Temp2 := A_LoopField . Temp2
		StringReplace, clipWork, Temp2, % Chr(29), `r`n, All
		GoSub, ConvPaste
		SToolTip("Reversed",1000,2)
	}
Return

ConvertSwap:
	Send {Left}+{Right 2}
	GoSub, ConvInit
	If clipWork != 
	{
		SwappedLetters := SubStr(clipWork,2) . SubStr(clipWork,1,1)
		Send, %SwappedLetters%
		Send {Left}
		Clipboard := OldClipboard
		SToolTip("Swap!",1000,2)
	}
Return

CorReset:
	GoSub, CorMute
	FirstPass := 1
	Exit
Return

; Script correction word
WaitEnter() {
	If WinActive("ahk_exe WINWORD.exe") OR WinActive("ahk_exe wfica32.exe") {
		If (GetKeyState("Escape")) {
			GoSub, CorReset
		} Else {
			GoSub, EscWait
			Send !e
			Sleep 100
			Send {Enter}
			GoSub, EscWait
		}
	} Else {
		GoSub, CorReset
	}
}

GetText(Met_gtTitle)
{
	global Met_gtText
	Met_gtW_H = 250
	Met_gtW_L = 200 ;477 
	Met_gtMiddle_L := (A_ScreenWidth/2) - (Met_gtW_L/2) 
	Met_gtMiddle_H := (A_ScreenHeight/2) - (Met_gtW_H/2)
	Gui, Met_gtW:New
	Gui, Met_gtW:+AlwaysOnTop -Caption +Border
	Gui, Met_gtW:Font, s12
	Gui, Met_gtW:Add, CheckBox, vCorOrdoSel, CorOrdo?
	Gui, Met_gtW:Add, CheckBox, vCorEspaceSel, CorEspace?
	Gui, Met_gtW:Add, CheckBox, vCorEspaceCleanSel, CorEspaceClean?
	Gui, Met_gtW:Add, CheckBox, vCorTtt1Sel, CorTtt1?
	Gui, Met_gtW:Add, CheckBox, vCorTtt2Sel, CorTtt2?
	Gui, Met_gtW:Add, CheckBox, vCorTttCrSel, CorTttCr?
	Gui, Met_gtW:Add, CheckBox, vCorComprimSel, CorComprim?
	Gui, Met_gtW:Add, Button, x20 y220 w50 h20 Default, OK
	Gui, Met_gtW:Add, Button, x76 y220 w50 h20 Cancel, Esc
	Gui, Met_gtW:Show, x%Met_gtMiddle_L% y%Met_gtMiddle_H% h%Met_gtW_H% w%Met_gtW_L%, %Met_gtTitle%
	WinWaitClose % Met_gtTitle
	Return Met_gtText

	Met_gtWGuiEscape:
	Met_gtWGuiClose:
		Gui, Met_gtW:cancel
		Gui, Met_gtW:destroy
	Return

	Met_gtWButtonOK:
		Gui, Met_gtW:Submit
		Gui, Met_gtW:Destroy
	Return
}



; Add hotstring script
S_AddHotstring:
	; AutoTrim Off	; Retain any leading and trailing whitespace on the Clipboard.
	OldClipboard := Clipboard
	Clipboard := ""	; Must start off blank for detection to work.
	Send ^c
	ClipWait 1
	If ErrorLevel {
		If (OldClipboard != "" ) {
			StringReplace, Hotstring, OldClipboard, ``, ````, All	; Do this replacement first to avoid interfering with the others below.
		} Else {
			SToolTip("No text selected and Clipboard is empty",1000,3)
			Return
		}
	}
	Else
		StringReplace, Hotstring, Clipboard, ``, ````, All	; Do this replacement first to avoid interfering with the others below.

	; Replace CRLF and/or LF with `n for use in a "send-raw" hotstring:
	; The same is done for any other characters that might otherwise
	; be a problem in raw mode:
	StringReplace, Hotstring, Hotstring, `r`n, ``r, All	; Using `r works better than `n in MS Word, etc.
	StringReplace, Hotstring, Hotstring, `n, ``r, All
	StringReplace, Hotstring, Hotstring, %A_Tab%, ``t, All
	StringReplace, Hotstring, Hotstring, `;, ```;, All
	; This will move the InputBox's caret to a more friendly position:
	If GetKeyState("LAlt", "U")
		SetTimer, MoveCaret, 10
	Else
		SetTimer, MoveCaret2, 10

	; Show the InputBox, providing the default hotstring:
	If GetKeyState("LAlt", "U")
		InputBox, Hotstring, New Hotstring, Type your abreviation at the indicated insertion point. You can also edit the replacement text if you wish.`n`nExample entry: ::btw`::by the way`nC : Case Sensitive`t* : Immediate Execute`nO : No End Char`tB0 : No Backspace`n? : Inside Word`tR : Raw text`nX : Labels/Functions,,,250,,,,, ::`::%Hotstring%
	Else
		InputBox, Hotstring, New Hotstring, Type your abreviation at the indicated insertion point. You can also edit the replacement text if you wish.`n`nExample entry: ::btw`::by the way`nC : Case Sensitive`t* : Immediate Execute`nO : No End Char`tB0 : No Backspace`n? : Inside Word`tR : Raw text`nX : Labels/Functions,,,250,,,,, ::%Hotstring%`::
	If ErrorLevel	; The user pressed Cancel.
	{
		SToolTip("Canceled",1000,2) ; ClipWait timed out.
		If (Clipboard != OldClipboard)
			Clipboard := OldClipboard	; Restore previous contents of Clipboard.
		Return
	}
	If InStr(Hotstring, "`:::") {
		SToolTip("You didn't provide an abbreviation. The hotstring has not been added.",1000,2) ; ClipWait timed out.
		If (Clipboard != OldClipboard)
			Clipboard := OldClipboard	; Restore previous contents of Clipboard.
		Return
	}
	; Otherwise, add the hotstring and reload the script:
	FileAppend, `n%Hotstring%, %A_ScriptDir%\Opti\Texte.ahk ; Put a `n at the beginning in case file lacks a blank line at its end.
	LastDotPos := InStr(Hotstring,":",0,0) ; get position of last occurrence of ":"
	HSResult := SubStr(Hotstring,LastDotPos+1) ; get substring from start to last dot
	Send %HSResult%
	Sleep 100
	GoSub, GoReload
	Sleep 200 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
	MsgBox, 4,, The newly added hotstring appears to be improperly formatted.	Would you like to open the script for editing? Note that the bad hotstring is at the bottom of the script.
	IfMsgBox, Yes, Edit
	If (Clipboard != OldClipboard)
		Clipboard := OldClipboard	; Restore previous contents of Clipboard.
Return

ConvSelect1:
	KeyWait, CapsLock
	GoSub, ConvInit
	list:={"  ":" "
	,"`n ":"`n"
	," `n":"`n"
	,"- ":""
	,"-0-0":" cp le matin"
	,"0-1-0":"1 cp le midi"
	,"0-0-1":"1 cp le soir"
	,"1-1-1":"1 cp matin, midi et soir"
	,"1-1-0":"1 cp matin et midi"
	,"1-0-1":"1 cp matin et soir"
	,"0-1-1":"1 cp midi et soir"
	,".0.0":" cp le matin"
	,"0.1.0":"1 cp le midi"
	,"0.0.1":"1 cp le soir"
	,"1.1.1":"1 cp matin, midi et soir"
	,"1.1.0":"1 cp matin et midi"
	,"1.0.1":"1 cp matin et soir"
	,"0.1.1":"1 cp midi et soir"
	,"1cp":"1 cp"
	,"Kardégic 75mg 0.1.0":"KARDEGIC 75mg 1 sachet le midi"
	,"KARDEGIC 75mg 1 cp":"KARDEGIC 75mg 1 sachet"}
	Send % str_(clipWork,list)
Return

ConvSeparateLines:
	KeyWait, CapsLock
	clipWork:=Clipboard
	StringReplace, clipWork, clipWork,   - ,, All ;Fix for Send sending Windows linebreaks
	StringReplace, clipWork, clipWork,  - ,, All ;Fix for Send sending Windows linebreaks
	StringReplace, clipWork, clipWork, - ,, All ;Fix for Send sending Windows linebreaks
	Loop, parse, clipWork, `n, `r
	{
		Send, %A_LoopField%{Down}{Sleep 500}
	}
Return

str_(clipWork,list){
	For k,v in list
		StringReplace, clipWork,clipWork,%k%,%v%,all
	StringReplace, clipWork, clipWork,  - ,, All ;Fix for Send sending Windows linebreaks
	StringReplace, clipWork, clipWork, - ,, All ;Fix for Send sending Windows linebreaks
	StringReplace, clipWork, clipWork,"  ",, All ;Fix for Send sending Windows linebreaks
	StringReplace, clipWork, clipWork,"`n ","`n", All ;Fix for Send sending Windows linebreaks
	Return clipWork
}

MoveCaret:
	IfWinNotActive, New Hotstring
		Return
	; Otherwise, move the InputBox's insertion point to where the user will type the abbreviation.
	Send {Home}{Right 2}
	SetTimer, MoveCaret, Off
Return

MoveCaret2:
	IfWinNotActive, New Hotstring
		Return
	; Otherwise, move the InputBox's insertion point to where the user will type the abbreviation.
	Send {End}
	SetTimer, MoveCaret2, Off
Return

; Tray menu subroutines.
TrayDebug:
	ListHotkeys
Return
TrayHelp:
	Run, %A_ScriptDir%\
Return
TrayEdit:
	Edit
Return
TraySuspend:
	Suspend
	Menu, Tray, % A_IsSuspended ? "Check" : "Uncheck", &Suspend
Return
TrayExit:
	ExitApp

EditConfig:
	If (CustomEditorPath != "")
		Editor := CustomEditorPath
	Else {
		RegRead, Editor, HKCR, AutoHotkeyScript\Shell\Edit\Command
		Editor := RegExReplace(Editor, "(^\s*|\s*$)")
	}
	If (CustomEditorPath != "" OR Editor != )
		Run, %Editor% "%A_ScriptDir%\%MainScriptName%"
	Else
		Run, notepad %A_ScriptDir%\%MainScriptName%
Return

;
; Tray Menu
;

TopMenu(MenuName,MenuLauncher:="tx",MenuItems*)
{
	For Each, Item in MenuItems {
		HotstringMenuF(Each,MenuLauncher,%Each%*)
		; Menu, %MenuName%, Add, % "&" A_Index " " Item, % ":" Each
		Menu, %MenuName%, Add, % " " Item, % ":" Each
	}
}

UpdateTime()
{
	Menu, TimeDate, DeleteAll
	List := DateFormats(Date)
	TextMenuDate(List,"TimeDate","DateAction")
}

HotstringMenuF(MenuName,MenuLauncher,MenuArray*)
{
;	ArrayLength := MenuArray.SetCapacity(0) ; Get array size
	For Each, Item in MenuArray {
		; If (ArrayLength < 10)
			; Shortcut := "&" . A_Index
		; Else
			; Shortcut := "&" . Chr(A_Index+96)
			If (InStr(Item,"Brk"))			; Add column breaks to long menus
			{
				Item := StrReplace(Item,"Brk")
				HSOptions := "+BarBreak"
			} Else
				HSOptions := ""

; Bind output data to the InsertFunction()
		Handler := Func("InsertFunction").Bind(Each,Item,MenuLauncher)

		If (Each = A_index)		; Simple array
			; Menu, % MenuName, Add, % Shortcut " — " Item, % Handler, % HSOptions
			Menu, % MenuName, Add, % Item, % Handler, % HSOptions
		Else
			; Menu, % MenuName, Add, % Shortcut " " Each " — " Item, % Handler, % HSOptions
			Menu, % MenuName, Add, % Shortcut " " Each "`t`" Item, % Handler, % HSOptions ;" ; comment for highlighting fix
	}
}

InsertFunction(Key,Item,MenuLauncher)
{
	If (MenuLauncher = "fn")
	{
		If (Key ~= "^\d*$")
			GoSub, %Item%
		Else
			GoSub, %Key%
		MenuLauncher := "tx"
	} Else {
		If (Key ~= "^\d*$")
			Send {raw}%Item%
		Else
			Send {raw}%Key%
	}
}

DateFormats(Date)
{
	FormatTime, Timoutput , %Date%, HH:mm ;24 hour clock
	List := Timoutput
	FormatTime, Timoutput , %Date%, HH:mm:ss
	List := List . "|" . Timoutput
	FormatTime, Timoutput , %Date%, ShortDate ; 17/03/2023
	List := List . "|" . Timoutput
	FormatTime, Timoutput , %Date%, dd/MM/yyyy, HH:mm:ss ; 17/03/2023, 23:29:25
	List := List . "|" . Timoutput
	FormatTime, Timoutput , %Date%, LongDate ; vendredi 17 mars 2023
	List := List . "|" . Timoutput
	FormatTime, Timoutput, %Date%, dddd d MMMM yyyy, HH:mm:ss
	List := List . "|" . Timoutput
	Return List
}

TextMenuDate(TextOptions,Menu,Action)
{
	StringSplit, MenuItems, TextOptions , |
	Loop %MenuItems0%
	{
		Item := MenuItems%A_Index%
		Menu, %Menu%, add, %Item%, %Action%
	}
}

DateAction:
	SendInput %A_ThisMenuItem%{Raw}%A_EndChar%
Return


Hotkey_MakeVarSafe(p_hotkey, p_ignorechars="") {
	replace:=p_hotkey

	StringReplace, replace, replace, $, % !InStr(p_ignorechars, "$") ? "KH_":""
	StringReplace, replace, replace, ~, % !InStr(p_ignorechars, "~") ? "PT_":""
	StringReplace, replace, replace, *, % !InStr(p_ignorechars, "*") ? "WC_":""

	StringReplace, replace, replace, <^>!, AltGr_
	StringReplace, replace, replace, <, L, a
	StringReplace, replace, replace, >, R, a
	StringReplace, replace, replace, &, and

	StringReplace, replace, replace, ^, Ctrl_, a
	StringReplace, replace, replace, +, Shift_, a
	StringReplace, replace, replace, #, Win_, a
	StringReplace, replace, replace, !, Alt_, a

	replace:=RegExReplace(replace, "i)[^a-z0-9_]", "_")

	p_hotkey:=replace

	Return p_hotkey
}

Hotkey_GetModifiers(p_hotkey) {
	Return RegExReplace(p_hotkey, "i)[\w\s]+$")
}

Hotkey_RemoveModifiers(p_hotkey) {
	Return RegExReplace(p_hotkey, "i)^[^a-z0-9_]+")
}

Hotkey_GetKeyName(p_hotkey) {

	p_hotkey:=Hotkey_RemoveModifiers(p_hotkey)

	;// Get string before 1st space...(removes "up" or "down" from name of key)
	Loop, Parse, p_hotkey, " "
	{
		p_hotkey:=A_LoopField
		break
	}

	Return p_hotkey
}


CheckMouseMove:
	MouseGetPos, mouseCurrentX, mouseCurrentY
	If mousePreviousX = ""
		mousePreviousX := MouseStartX
	If mousePreviousY = ""
		mousePreviousY := MouseStartY
	distanceX := mouseCurrentX - mousePreviousX
	distanceY := mouseCurrentY - mousePreviousY
	
	possibleMoves := GetNextPossibleMoves(moves)
;	Stooltip("distancex/y " distanceX "/" distanceY " currrentX/Y " mouseCurrentX "/" mouseCurrentY " previousX/Y " mousePreviousX "/" mousePreviousY " startX/Y " mouseStartX "/" mouseStartY,0,9,-20,-20)
	If (moves.Length() <= maxMoves) {
		If (Abs(distanceX) > threshold or Abs(distanceY) > threshold) {
			newMove := ""
			If (Abs(distanceX) >= Abs(distanceY)) {
				newMove := distanceX < 0 ? "L" : "R"
				mousePreviousX := mouseCurrentX
				mousePreviousY := mouseCurrentY
			} Else If (Abs(distanceX) < Abs(distanceY)) {
				newMove := distanceY < 0 ? "U" : "D"
				mousePreviousX := mouseCurrentX
				mousePreviousY := mouseCurrentY
			}
			If (moves.Length() = 0 or newMove != moves[moves.Length()] AND (possibleMoves.Length() > 0 OR GetActionDescription(moves) != "❌ Action non définie") ) {
				moves.Push(newMove)
			
				If (possibleMoves.Length() = 0) {
					If (Abs(distanceX) > threshold or Abs(distanceY) > threshold) {
						invalidMove := true
					}
				}
			}
			Else If (GetActionDescription(moves) = "❌ Action non définie" AND possibleMoves.Length() = 0) {
				invalidMove := true
			}

		}
	} Else {
		; Vérifier si un mouvement supplémentaire survient après avoir atteint maxMoves
		If (Abs(distanceX) > threshold or Abs(distanceY) > threshold) {
			invalidMove := true
		}
	}

	UpdateTooltip()
return

ExecuteAction(moves) {
	action := GetActionDescription(moves)
	If (action != "❌ Action non définie" && action != "Clic droit normal") {
		movesStr := JoinMovesStr(moves)
		actions[movesStr].action.Call()
		STooltip("✅ " . action)
	} Else If (action == "Clic droit normal") {
		Send {RButton}
		GoSub, RemoveToolTip
	}
	lastRBMove := "•"
}

GetActionDescription(moves) {
	If (moves.Length() = 0) {
		return "Clic droit normal"
	}

	movesStr := JoinMovesStr(moves)
	return actions.HasKey(movesStr) ? actions[movesStr].description : "❌ Action non définie"
}

GetNextPossibleMoves(moves) {
	movesStr := JoinMovesStr(moves)
	possibleMoves := []
	for sequence, actionInfo in actions {
		If (InStr(sequence, movesStr) == 1 && StrLen(sequence) > StrLen(movesStr)) {
			nextMove := SubStr(sequence, StrLen(movesStr) + 1, 1)
			possibleMoves.Push({move: nextMove, action: actionInfo.description})
		}
	}
	return possibleMoves
}

; --- Calcule les prochains mouvements (1er et 2ᵉ niveau) ---
GetNextTwoPossibleMoves(moves) {
	global actions
	result := []

	baseSeq := JoinMovesStr(moves)

	; --- Étape 1 : récupérer les premiers mouvements possibles ---
	firstMoves := []
	for sequence, actionInfo in actions
	{
		If (InStr(sequence, baseSeq) = 1 && StrLen(sequence) > StrLen(baseSeq)) {
			nextMove := SubStr(sequence, StrLen(baseSeq) + 1, 1)
			found := false
			for i, mv in firstMoves
			{
				If (mv = nextMove) {
					found := true
					break
				}
			}
			If (!found)
				firstMoves.Push(nextMove)
		}
	}

	; --- Étape 2 : mouvements du 1er niveau (actions directes seulement) ---
	for i, m1 in firstMoves
	{
		seq1 := baseSeq . m1
		If (actions.HasKey(seq1)) {
			desc1 := actions[seq1].description
			result.Push({move: m1, action: desc1, level: 1})
		}
	}

	; --- Étape 3 : mouvements du 2ᵉ niveau (2 mouvements complets) ---
	for i, m1 in firstMoves
	{
		newMoves := []
		for j, mm in moves
			newMoves.Push(mm)
		newMoves.Push(m1)
		baseSeq2 := JoinMovesStr(newMoves)

		for sequence, actionInfo in actions
		{
			If (InStr(sequence, baseSeq2) = 1 && StrLen(sequence) > StrLen(baseSeq2)) {
				m2 := SubStr(sequence, StrLen(baseSeq2) + 1, 1)
				seq2 := baseSeq2 . m2
				desc2 := actions.HasKey(seq2) ? actions[seq2].description : actionInfo.description

				combo := m1 . m2
				exists := false
				for k, item in result
				{
					If (item.move = combo) {
						exists := true
						break
					}
				}
				If (!exists)
					result.Push({move: combo, action: desc2, level: 2})
			}
		}
	}

	return result
}

; --- Affiche le tooltip joliment formaté ---
UpdateTooltip() {
	global moves, invalidMove, lastRBMove, invalidtooltipsent

	If (moves.Length() > 0)
		currentMove := moves[moves.Length()]
	Else
		currentMove := ""

	If (currentMove = lastRBMove AND moves.Length() > 0)
		return
	Else If (lastRBMove != currentMove AND ((moves.Length() = 0 AND A_TimeSinceThisHotkey > 500) OR moves.Length() > 0))
	{
		lastRBMove := currentMove

		possibleMoves := GetNextTwoPossibleMoves(moves)

		If (invalidMove OR (GetActionDescription(moves) == "❌ Action non définie" AND possibleMoves.Length() <= 0)) {
			tooltipText := "❌ Séquence annulée : mouvement " JoinMoves(moves) " non attribué"
			SToolTip(tooltipText, 3000)
			invalidtooltipsent := 1
			return
		}

		; --- Organisation spatiale ---
		; --- Regrouper par première flèche ---
		grouped := { "U": [], "D": [], "L": [], "R": [] }
		for index, moveInfo in possibleMoves {
			first := SubStr(moveInfo.move, 1, 1)
			If (!grouped.HasKey(first))
				continue
			grouped[first].Push(moveInfo)
		}

		; --- Préparer chaque zone ---
		textUp := ""
		textDown := ""
		textLeft := ""
		textRight := ""

		for dir, group in grouped {
			If (group.Length() = 0) {
				line := GetMoveIcon(dir) . "  🚫 Pas d'action `n"
				If (dir = "U")
					textUp := (lastRBMove = "U" ? "`t`t" . GetMoveIcon(dir) . " •  " .  GetActionDescription(moves) . "`n" : "`t`t" . line)
				Else If (dir = "D")
					textDown := (lastRBMove = "D" ? "`t`t" . GetMoveIcon(dir) . " •  " .  GetActionDescription(moves) : "`t`t" . line)
				Else If (dir = "L")
					textLeft := (lastRBMove = "L" ? "" . GetMoveIcon(dir) . " •  " .  GetActionDescription(moves) : line)
				Else If (dir = "R")
					textRight := (lastRBMove = "R" ? "`t" . GetMoveIcon(dir) . " •  " .  GetActionDescription(moves) : "`t" . line)
				continue
			}

			for each, item in group {
				icons := ""
				Loop, Parse, % item.move
					icons .= GetMoveIcon(A_LoopField)
				line := icons . "  " . item.action . "`n"

				If (dir = "U")
					textUp .= "`t`t" . line
				Else If (dir = "D")
					textDown .= "`t`t" . line
				Else If (dir = "L")
					textLeft .= line
				Else If (dir = "R")
					textRight .= "`t" . line
			}
		}
		
		;	Stooltip(textLeft . textRight . textUp . textDown,3000,7,-20,-20)

		; --- En-tête ---
		header := (moves.Length() > 0 ? JoinMoves(moves) : "") . " • " . GetActionDescription(moves) . "`n`n"
		tooltipText := header

		hasAnyAction := false
		for dir, group in grouped
			If (group.Length() > 0)
				hasAnyAction := true

		If (!hasAnyAction) {
			tooltipText .= "🚫 Aucun mouvement suivant possible"
			SToolTip(tooltipText, 0)
			return
		}
		
		; --- Ligne du haut ---
		If (textUp != "")
			tooltipText .= "" . textUp . "`n"

		; --- Lignes du milieu : gauche et droite côte à côte ---
		leftLines := StrSplit(Trim(textLeft, "`n"), "`n")
		rightLines := StrSplit(Trim(textRight, "`n"), "`n")
		maxLines := (leftLines.MaxIndex() > rightLines.MaxIndex()) ? leftLines.MaxIndex() : rightLines.MaxIndex()

		Loop %maxLines% {
			leftPart := (A_Index <= leftLines.MaxIndex()) ? leftLines[A_Index] : ""
			rightPart := (A_Index <= rightLines.MaxIndex()) ? rightLines[A_Index] : ""
			If (leftLines.MaxIndex() < rightLines.MaxIndex() AND A_Index = rightLines.MaxIndex())
				toolTipText .= "`t"
			tooltipText .= Format("{:-40}{:s}`n", leftPart, rightPart)
		}

		; --- Ligne du bas ---
		If (textDown != "")
			tooltipText .= "`n" . textDown

		; --- Aucun mouvement possible ---
		If (possibleMoves.Length() = 0)
			tooltipText .= "`n🚫 Aucun mouvement suivant possible"

		SToolTip(tooltipText, 0)
	}
}

; --- GetMoveIcon et JoinMoves (tes fonctions existantes, sinon les garder) ---
GetMoveIcon(move) {
	switch move {
		case "U": return "↑"
		case "D": return "↓"
		case "L": return "←"
		case "R": return "→"
	}
	return "•"
}

JoinMoves(moves) {
	result := ""
	for index, move in moves {
		If (index > 1)
			result .= " "
		result .= GetMoveIcon(move)
	}
	return result
}

JoinMovesStr(moves) {
	result := ""
	for index, move in moves {
		result .= move
	}
	return result
}

; Fonctions d'action
ToggleRestoreOrOverview() {
	If (allMinimized) {
		Send, #d
		allMinimized := false
		GoSub, ResetActions
	} Else {
		Send, #{Tab}
	}
}

MinimizeAllWin() {
	Send, #d
	allMinimized := !allMinimized
	GoSub, ResetActions
}

PreviousApp() {
	Send, !{Tab}
}

NextApp() {
	Send, !+{Tab}
}

PreviousTab() {
	Send, ^+{Tab}
}

NextTab() {
	Send, ^{Tab}
}

PrevVirtualDesktop() {
	Send, ^#{Left}
}

NextVirtualDesktop() {
	Send, ^#{Right}
}

NeWVirtualDesktop() {
	Send, ^#d
}

ReopenLastTab() {
	Send, ^+t
}

OpenNewTab() {
	Send, ^t
}

Refresh() {
	Send, {F5}
}

MG_RButton_RD() { ; example. Closes active window.
	; ActiveWinID := RMApp_Reg("ActiveWinID")	; window that was active in a moment when you pressed RMShowHotkey
	WinClose, A ;, ahk_id %ActiveWinID%
}

MG_RButton_LD() { ; example. Minimizes active window.
	; ActiveWinID := RMApp_Reg("ActiveWinID")	; window that was active in a moment when you pressed RMShowHotkey
	WinMinimize, A ;, ahk_id %ActiveWinID%
}

NumModeSwitch:
	If (NumMode = 0) {
		GoSub, NumModeOn
	} Else {
		GoSub, NumModeOff
	}
Return

NumModeOn:
	NumMode := 1
	SToolTip("Num Mode On",3000,3,,,,"s18",,"000000","ffffff")
	DelayedSToolTip(3000,"Num Mode On",30000,3,"m",A_ScreenHeight-100,,"s18",,"000000","ffffff")
	Menu, Tray, Icon, shell32.dll, 44 ; this changes the tray icon to a little paper!
Return

NumModeOff:
	NumMode := 0
	SToolTip("Num Mode Off",1000,3,50,,,"s18",,"ffffff","000000")
	DelayedSToolTip(1000,"Num Mode Off",1000,4,50,A_ScreenHeight-200,,"s18",,"ffffff","000000")
	GoSub, SetCapsOff
Return

TimeOSDInit() {
	global TimeOSDLabel
	SetTimer, TimeOSDPulse, 1000
	Gui, TimeOSD:Default
	Gui, +LastFound +AlwaysOnTop +ToolWindow -Caption
	Gui, Font, s18, Calibri
	Gui, Margin, 0, 0
	Gui, Add, Text, cWhite vTimeOSDLabel gTimeOSDClose w250 h36 Center
}

TimeOSDPulse() {
	static lastTime := ""

	FormatTime, currTime, , HH:mm

	If (lastTime == currTime || A_TimeIdlePhysical > 600000)
		Return

	If (RegExMatch(currTime, ":00"))
	{
		TimeOSDShow(currTime, "000000")
		SendTime()
	} Else If (RegExMatch(currTime, ":15"))
		TimeOSDShow(currTime, "00007f", 5000)
	Else If (RegExMatch(currTime, ":30"))
		TimeOSDShow(currTime, "007f7f", 5000)
	Else If (RegExMatch(currTime, ":45"))
		TimeOSDShow(currTime, "3f7fbf", 5000)

	lastTime := currTime
}

TimeOSDShow(timeText, bg, timeshown:=5000) {
	FormatTime, timeText, , HH:mm:ss
	Gui, TimeOSD:Default
	Gui, Color, %bg%
	GuiControl, Text, TimeOSDLabel, %timeText% ;' ; comment for highlighting fix
	y := A_ScreenHeight - 120
	Gui, Show, xCenter y%y% NoActivate
	SetTimer, TimeOSDClose, -%timeshown%
}

TimeOSDClose() {
	Gui, TimeOSD:Cancel
}

rgb2hex(R, G, B, H := 0)
{
	H := ((H = 1) ? "#" : ((H = 2) ? "0x" : ""))
	VarSetCapacity(Hex, 17 << !!A_IsUnicode, 0)
	DllCall("Shlwapi.dll\wnsprintf", "Str", Hex, "Int", 17, "Str", "%016I64X", "UInt64", (R << 16) + (G << 8) + B, "Int")
	Return H SubStr(Hex, StrLen(Hex) - 6 + 1)
}

SendTime()
{
	FormatTime, currTime, , HH:mm:ss
	TimeOSDShow(currTime,rgb2hex(100, 100, 255),5000)
}

Launchenclose(brackettype:="")
{
	global
	parentheses = 0
	brackets = 0
	guill = 0
	accolades = 0
	guibrtest = 0
	OldClipboard:=ClipboardAll
	Clipboard :=
	Send ^c
	Clipwait, 1
	If (errorlevel)
		Return
	clipWork:=Clipboard
	If (brackettype = "")
	{
		GetTextEnclose("Choose an enclosing")
	}
	If (parentheses = 1 OR brackettype = "par")
	{
		enc1:="("
		enc2:=")"
	}
	Else If (brackets = 1 OR brackettype = "bra")
	{
		enc1:="["
		enc2:="]"
	}
	If (guill = 1 OR brackettype = "gui")
	{
		enc1:=""""
		enc2:=""""
	}
	If (accolades = 1 OR brackettype = "acc")
	{
		enc1:="{{}"
		enc2:="{}}"
	}
	If (guibrtest = 1 OR brackettype = "tes")
	{
		enc1:="a"
		enc2:="b"
	}
	If (parentheses = 1 OR brackets = 1 OR guill = 1 OR accolades = 1 OR guibrtest = 1 OR brackettype != "")
		Send, % enc1 . clipWork . enc2
	Clipboard := OldClipboard
}

GetTextEnclose(Met_gtTitle)
{
	global Met_gtText
	Met_gtW_H = 250
	Met_gtW_L = 200 ;477 
	Met_gtMiddle_L := (A_ScreenWidth/2) - (Met_gtW_L/2) 
	Met_gtMiddle_H := (A_ScreenHeight/2) - (Met_gtW_H/2)
	Gui, Met_gtW:New
	Gui, Met_gtW:+AlwaysOnTop -Caption +Border
	Gui, Met_gtW:Font, s12
	Gui, Met_gtW:Add, Radio, vparentheses, (&Parentheses)
	Gui, Met_gtW:Add, Radio, vbrackets, [&Brackets]
	Gui, Met_gtW:Add, Radio, vguill, "&Guillemets"
	Gui, Met_gtW:Add, Radio, vaccolades, {&Accolades}
	Gui, Met_gtW:Add, Radio, vguibrtest, guibr&Test
	Gui, Met_gtW:Add, Button, x20 y220 w50 h20 Default, OK
	Gui, Met_gtW:Add, Button, x76 y220 w50 h20 Cancel, Esc
	Gui, Met_gtW:Show, x%Met_gtMiddle_L% y%Met_gtMiddle_H% h%Met_gtW_H% w%Met_gtW_L%, %Met_gtTitle%
	WinWaitClose % Met_gtTitle
	Return Met_gtText
}

MonitorInfo()
{
	; Récupération du nombre total de moniteurs
	SysGet, monitorCount, MonitorCount

	; Boucle pour chaque moniteur
	Loop, %monitorCount%
	{
		; Récupère les coordonnées du moniteur actuel
		SysGet, MonitorCoords, Monitor, %A_Index%
		
		; Calcule le centre du moniteur
		centerX := MonitorCoordsLeft + (MonitorCoordsRight - MonitorCoordsLeft) / 2
		centerY := MonitorCoordsTop + (MonitorCoordsBottom - MonitorCoordsTop) / 2
		
		; Crée le GUI
		Gui, New, +AlwaysOnTop
		Gui, Add, Text,, % "Moniteur #" . A_Index . " sur " . monitorCount
		Gui, Add, Text,, % "Gauche : " . MonitorCoordsLeft
		Gui, Add, Text,, % "Haut : " . MonitorCoordsTop
		Gui, Add, Text,, % "Droite : " . MonitorCoordsRight
		Gui, Add, Text,, % "Bas : " . MonitorCoordsBottom
		Gui, Add, Button, gNextMonitor, Suivant
		
		; Affiche le GUI au centre du moniteur actuel
		Gui, Show, % "x" . (centerX - 100) . " y" . (centerY - 75) . " w200 h160", Infos Moniteur %A_Index%
		
		; Attend que l'utilisateur clique sur le bouton "Suivant"
		Pause
	}

	; Ferme le dernier GUI et termine le script
	Gui, Destroy
	Return

	NextMonitor:
	Gui, Destroy
	Pause, Off
	Return
}

GetActiveWinName()
{
	WinGet, activwin, ProcessName, A
	Return activwin
}

SendSleep_Uniform(sleep_MS := 100, initial_final_sleep := -1, send_commands*)
{
	sleep_MS:=abs(sleep_MS)	;avoid negative errors
	If (initial_final_sleep = -1 OR initial_final_sleep = 2)
		Sleep, %sleep_MS%
	For i,cmd in send_commands {
		Send, % cmd
		If not (i = send_commands.MaxIndex())
			Sleep, %sleep_MS%
	}
	If (initial_final_sleep = 1 OR initial_final_sleep = 2)
		Sleep, %sleep_MS%
	Return
}

S_AlwaysOnTop:
	WinSet, AlwaysOnTop, Toggle, A
	WinGet, ExStyle, ExStyle, A
	WinGetTitle, Title, A
	If (ExStyle & 0x8)
	{
		ExStyle := "Always on Top"
		If !InStr(Title,"Always On Top",0,0)
			WinSetTitle, A, , % Title . " — " . ExStyle
	}
	Else
	{
		ExStyle := "no longer Always on Top"
		If InStr(Title,"Always On Top",0,0)
		{
			StringTrimRight, Title, Title, 16
			WinSetTitle, A, , %Title%
		}
	}
	SToolTip(GetActiveWinName() " is " ExStyle,5000,6,"m",1000,,"s24")
Return

DragMoveWindow:
	CoordMode, Mouse
	MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
	EWD_winTitle = ahk_id %EWD_MouseWin% ; Get the active window's title
	WinGetTitle, EWD_winTitleText, %EWD_winTitle% ; Get the title's text
	If !EWD_winTitleText { ; Window (e.g., Windows desktop) has no title text, so abort
	Return
	}
	WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin%
	WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,winW,winH, ahk_id %EWD_MouseWin%
	Maxstate := EWD_WinState
	If GetKeyState("LCtrl")
	{
		EWD_keys := ["LCtrl", "MButton"] ; has to match current hotkey
		CoordMode, Mouse, Relative
		MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
		SetTimer, EWD_ResizeMouse, 5 ; Track the mouse as the user drags it.
	}
	Else
	{
		EWD_keys := [A_ThisHotKey]
		If (A_PriorHotKey = A_ThisHotKey AND A_TimeSincePriorHotkey < 300)
		{
			If (Maxstate = 1)
			{
				WinRestore, A
			} Else If (Maxstate = 0)
			{
				WinMaximize, A
			}
		} Else {
			SetTimer, EWD_WatchMouse, 5 ; Track the mouse as the user drags it.
		}
	}
Return

AdjustScreenBrightness(step)
{
	service := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"	

	monitors := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")

	monMethods := ComObjGet(service).ExecQuery("SELECT * FROM wmiMonitorBrightNessMethods WHERE Active=TRUE")

	minBrightness := 5 ; level below this is identical to this

	for i in monitors {
		curt := i.CurrentBrightness
	break
	}

	If (step = "") ; empty parameter means full brightness
	{
		for i in monMethods {
			i.WmiSetBrightness(1, 100)
		break
		}
	}
	Else
	{
		If (curt < minBrightness) ; parenthesis is necessary here
			curt := minBrightness
		toSet := curt + step
		If (toSet > 100)
			return
		If (toSet < minBrightness)
			toSet := minBrightness
		for i in monMethods {
			i.WmiSetBrightness(1, toSet)
		break
		}
	}
}

CheckGammaBright(gammavalue)
{
	SysGet, MonCount, MonitorCount	; or try:	SysGet, MonCount, 80
	pathToScript = %A_ScriptDir%\Caps\Tools\gamma.ahk2a122
	DetectHiddenWindows, On
	If (WinExist(pathToScript))
	{
		WinClose, %pathToScript%
		Run, %pathToScript%
		WinWait, %pathToScript%
		Sleep 200
	} Else
		AdjustScreenBrightness(gammavalue)
}

TransCycle:
	trscycle++
	If trscycle = 1
		tslevel:= 191
	Else If trscycle = 2
		tslevel:= 127
	Else If trscycle = 3
		tslevel:= 63
	Else {
		tslevel:= "OFF"
		trscycle:=0
	}
	WinSet, Transparent, %tslevel%, A
	tslevel:=round(tslevel/255*100)
	If tslevel = 0
		tslevel := 100
	SToolTip(tslevel "%")
Return

BPMcalc:
	SetFormat, Float, 0
	InputBox,bpm,RR in ms,Type your RR duration in ms
	If ErrorLevel	; The user pressed Cancel.
	{
		SToolTip("Canceled",1000,2) ; ClipWait timed out.
		Return
	}
	bpm:=60000/bpm
	Send %bpm% bpm
Return

MScalc:
	SetFormat, Float, 0
	InputBox,ms,HR in ms,Type your mean Heart Rate in bpm
	If ErrorLevel	; The user pressed Cancel.
	{
		SToolTip("Canceled",1000,2) ; ClipWait timed out.
		Return
	}
	ms:=60000/ms
	Send %ms% ms
Return

IMCcalc:
	SetFormat, Float, 0.1
	InputBox,kg,Poids en kg,Entrez le poids en kg.
	If ErrorLevel	; The user pressed Cancel.
	{
		SToolTip("Canceled",1000,2) ; ClipWait timed out.
		Return
	}
	SetFormat, Float, 0.2
	InputBox,cm,Taille en cm,Entrez la taille en cm.
	If ErrorLevel	; The user pressed Cancel.
	{
		SToolTip("Canceled",1000,2) ; ClipWait timed out.
		Return
	}
	cm:=cm/100
	SetFormat, Float, 0.1
	imc:=kg/(cm*cm)
	StringReplace, imc, imc, .,`,, All ; replace dot with comma
	Send Poids : %kg% kg, Taille : %cm% m, IMC : %imc% kg/m².
Return

IMCIcalc:
	GoSub, IMCcalc
	IMC20:=20*cm*cm
	IMC25:=25*cm*cm
	IMC30:=30*cm*cm
	Send IMC 20 : %IMC20% kg, IMC 25 : %IMC25% kg, IMC 30 : %IMC30% kg.
Return

IMCauto:
	GoSub, ConvInit
	SetFormat, Float, 0.1
	kg:=0
	SetFormat, Float, 0.2
	cm:=1
	Results3 := 0
	Results4 := 0
	cm2 := 0
	kg2 := 0
	Found := Count(clipWork, "\d+", "Results")
	SToolTip(Results1 "`n" Results2 "`n" Results3 "`n" Results4,,4,10,50)
	If Results4 <> 0
	{
		If Results1 < 2,2
		{
			cm:=Results1
			cm2:=Results2
			kg:=Results3
			kg2:=Results4
		} Else If Results3 < 2,2
		{
			kg:=Results1
			kg2:=Results2
			cm:=Results3
			cm2:=Results4
		}
		Results1 := Results2 := Results3 := Results4 := 0
	}
	If Results3 <> 0
	{
		If Results1 <= 2
		{
			cm:=Results1
			cm2:=Results2
			kg:=Results3
			kg2:= 0
			SToolTip("1bis")
		} Else If (Results3 > 150 AND Results2 <= 2)
		{
			kg:=Results1
			kg2:= Results2
			cm:=Results3
			cm2:=0
			SToolTip("2bis")
		} Else If (Results3 < 150 AND Results2 <= 2)
		{
			kg:= Results1
			kg2:=0
			cm:= Results2
			cm2:= Results3
			SToolTip("2ter")
		} Else
		{
			If (Results1 > Results3)
			{
				cm:= Results1
				cm2:= 0
				kg:= Results2
				kg2:= Results3
				SToolTip("3bis")

			}
			Else
			{
				kg:= Results1
				kg2:= Results2
				cm:= Results3
				SToolTip("4bis")
				cm2:= 0
			}
		}
		Results1 := Results2 := Results3 := Results4 := 0
	}
	If ((Results1 <= 2) & (Results1 <> 0)) 
	{
		cm:= Results1
		kg:= Results2
		SToolTip("1")
	}
	Else If ((Results2 <= 2) & (Results2 <> 0))
	{
		cm:= Results2
		kg:= Results1
		SToolTip("2")
	}
	Else If (((Results1 > 150) AND (Results2 > 150)) OR ((Results1 < 150) AND (Results2 < 150)) AND ((Results1 <> 0) AND (Results2 <> 0)))
	{
		If (Results1 > Results2)
		{
			cm:= % Results1
			kg:= % Results2
			SToolTip("3")
		}
		Else
		{
			cm:= % Results2 / 100
			kg:= % Results1
			SToolTip("4")
		}
	}
	Else If Results1 > 150
	{
		cm:= % Results1
		kg:= % Results2
				SToolTip("5")
	}
	Else If Results2 > 150
	{
		cm:= % Results2
		kg:= % Results1
				SToolTip("6")
	}

	If cm2 <> 0
		cm2:= % cm2 / (10**((Floor(Log(cm2)),1)+1))
	If kg2 <> 0
		kg2:= % kg2 / (10**((Floor(Log(kg2)),1)+1))
	If cm > 100
		cm := cm / 100
	SetFormat, Float, 0.2
	cm := % cm + cm2
	SetFormat, Float, 0.3
	kg := % kg + kg2

	SetFormat, Float, 0.1
	imc:=kg/(cm*cm)
		; MsgBox, %Results1% %Results2% %Results3%
		; MsgBox, %kg% %cm% %imc%
	If ((kg = "") OR (cm = "") OR (imc = "") OR (kg >= 200) OR (kg <= 3) OR (cm >= 3) OR (cm <= 1) OR (imc >= 70) OR (imc <= 10)) {
		SToolTip("Value error (Poids : " kg " kg, Taille : " cm " m, IMC : " imc " kg/m²), canceled.",3000,5,50)
		Return
	}
	StringReplace, kg, kg, .,`,, All ; replace dot with comma
	StringReplace, cm, cm, .,`,, All ; replace dot with comma
	StringReplace, imc, imc, .,`,, All ; replace dot with comma
	Send Poids : %kg% kg, Taille : %cm% m, IMC : %imc% kg/m².
	Send {RAlt Up} {LCtrl Up}
Return

Count(Count_String, Count_Needle, Count_Type="0") ; if type <> 0 then it's regex match (vs. InStr)
{
	Global
	Count_n = 0
	If Count_Type {
		Loop {
			Count_f := RegExMatch(Count_String, Count_Needle, Count_Output) - 1
			If (Count_f = -1)
				Break
			Count_n++
			%Count_Type%%Count_n% := Count_Output
			StringTrimLeft, Count_String, Count_String, % Count_f + StrLen(Count_Output)
		}
	} Else {
		Count_g := StrLen(Count_Needle)
		Loop {
			Count_f := InStr(Count_String, Count_Needle) - 1
			If (Count_f = -1)
				Break
			Count_n++
			StringTrimLeft, Count_String, Count_String, % Count_f + Count_g
		}
	}
	Return Count_n
}