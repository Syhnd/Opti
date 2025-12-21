; Ce script Autohotkey est conçu pour pour faire gagner du temps sur votre ordinateur. v0.12.1. 22/12/25. ©Syhnd.
; Ce fichier est le fichier maître, à lancer en premier. Il contient les raccourcis claviers (Hotkeys) pour lancer les fonctions spécifiques. lancer ce fichier lance également automatiquement les autres scripts (texte et fonctions)
; Vous pouvez ajouter vos propres raccourcis personnalisés à la fin de ce fichier en suivant le modèle suivant : Touche désirée suivi de :: puis la fonction désirée.
; Par exemple
; a::Send Salut
; a & b::Run chrome.exe
; à chaque fois que vous appuierez sur la touche A, le texte "Salut" sera envoyé. A chaque fois que vous appuierez sur A et B en même temps, Google Chrome sera lancé.
; Par défaut seules les combinaisons de 1 ou 2 touches peuvent peuvent être écrites simplement, si vous souhaitez combiner 3 touches, il faut utiliser un subterfuge (Cf la méthode utilisée sur CapsLock & Esc).
; Pour apprendre à créer vos propres fonctions, je vous invite à lire la documentation très complète d'AutoHotKey sur ce lien https://www.autohotkey.com/docs/v1/Hotstrings.htm

; L'appui simultané de CapsLock et la touche sélectionnée donne cette fonction :
;	Esc : Calculatrice / Alt+Esc : Gestionnaire des tâches / F1 : Volume Mute / F2 : Volume- / F3 : Volume+ / F4 : Suspendre script / F5 : Relancer script / F6-F12 : rien
;	² : Quick Menu / 1 : 7 / 2 : 8 / 3 : 9 / 4 : casse (Maj : MAJ ; Ctrl : min ; Alt : toggle ; Alt+Maj : iNV ; Ctrl : Swap) / 5 : parentheses&brackets / 789à)= : rien
;	A : 4 / Z : 5 / E : 6 / R : - / T : affiche l'heure / Y : transparence / U and I : Remplacer texte spécifique / P : aperçu avant impression / TabYO^$* : rien
;	Q : 1 / S : 2 / D : 3 / F : + / G : chercher texte sélectionné sur google / H : ajouter hotstring / J : Always On Top / KLMù* : rien
;	< : < / W : 0 / X : "/" / C : * / V : Demander à chatGPT de reformuler pour intégrer dans un courrier d'hospi /  B : corriger ordonnance / N : corriger courrier / , : effacer texte sélectionné dans tout le document / ;:! : rien
;	Clic gauche : Double clic

;	Numlock : les touches du Numpad deviennent des raccourcis texte (par exemple pour vos adresses mail)

; quand la souris est sur le bord de l'écran :
	; Bord Gauche : 
		; WheelUp : Vol+ / WheelDown : Vol- / Mbutton : Mute / CapsLock : AltTab
	; Bord Droit :
		; WheelUp : Brightness+ / WheelDown : Brightness-
	; Bords Haut et Bas :
		; Rien

; Souris 
	; Rbutton + WheelUp : Page Up / Rbutton + MWheelDown : Page Down
	; Mbutton + WheelUp : AltTab GUI Next Window / Mbutton + MWheelDown : AltTab GUI Prev Window
	; MButton + Drag : Move Window / Ctrl+MButton + Drag : Resize Window (adjust nearest corner) / RButton x2 : Maximize Window

; RButton + déplacer souris : Follow a specific path while RButton pressed to launch sequence
	; Up : Win+Tab / Up->Left : Previous tab / Up->Right : Next Tab / Up->Left->Down : Prev Desktop / Up->Right->Down : Next Desktop
	; Down : Minimize All (aka panic gesture) /
	; Left : AltTab / Left->Up : Maximize Window / Left->Down : Minimize Window
	; Right : Maj+AltTab / Right->Down : Close Window

; Pour toute question, n'hésitez pas à me contacter par les canaux usuels :) (Généralement l'endroit où vous avez découvert ce script).
; Si ce script vous a été utile, n'hésitez pas à me remercier en m'offrant une tasse de café ou une carte graphique RTX5090 😂
; https://www.paypal.com/donate?business=B6PFUFY2Q2FT2&currency_code=EUR

; ===========================
; INIT
; ===========================

#Requires AutoHotkey v1.1.36+
#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
; #Warn	; Enable warnings to assist with detecting common errors.
SendMode Input	; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.
SetTitleMatchMode, 2
DetectHiddenWindows, On
CoordMode, Mouse, Screen
CoordMode, ToolTip, Screen
#SingleInstance Force
#InstallMouseHook
#InstallKeybdHook
SetWinDelay, -1
AutoTrim,On
SetBatchLines, -1
SetNumLockState, AlwaysOn
#KeyHistory 2
ListLines Off
Process, Priority, , A
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetControlDelay, -1

; DllCall("Sleep",UInt,17)

#HotkeyInterval 400 ; This is the default value (milliseconds).
#MaxHotkeysPerInterval 200
#MaxThreadsPerHotkey 1

GoSub, InitVariables

GoSub, SetCapsOffLaunch
GoSub, Traymenu
GoSub, HotstringMenuAutoExecute
GoSub, RemoveToolTip
GoSub, PriorPrior
TimeOSDInit()

SetTimer, CheckCaps, 2000

#Include %A_ScriptDir%\Opti		; Set working directory for #Include.
#Include Fonctions.ahk
#Include Texte.ahk

InitVariables:
	Mailn1 := "votremail@gmail.com"
	Mailn2 := "votremail@hotmail.fr"
	Mailn3 := "votremail@yahoo.com"
	Mailn4 := "votremail@outlook.fr"
	Mailn5 := "votremail@gmail.com"
	Mailn6 := "votremail@live.fr"
	Mailn7 := "votremail@gmail.com"
	Mailn8 := "votremail@gmail.com"
	Mailn9 := "votremail@gmail.com"
	myname := "Docteur XXX"

	MainScriptName := A_ScriptName
	FirstPass := 1
	global CorSleep := 1
	global PriorKeys := []
	b_remap := 0
	NumMode := 0
	DefaultMode := 0

	OldClipboard := ""

; Gestures
	Cross := 4 ; If you prefer a 4-way or 8 way cross, NW is t, NE is v, SW is c, SE is e
	global lastRBMove := "•"

	global StartTime2 := 1
	global globaldelay := 3000
	global elapsed := 0

	global hidestatus := 0
	global lastTTdelayed := 0
	flistttduration := 10000

	CustomEditorPath := ; "écrire ici l'adresse de votre éditeur de texte favori type C:\NotePadPlus\notepad++.exe"
	
; Variables pour le suivi du mouvement de la souris Rbutton
global mouseStartX := 0
global mouseStartY := 0
global mousePreviousX := 0
global mousePreviousY := 0
global threshold := 10 ; Distance minimale pour déclencher une action

global allMinimized := false
moves := []
maxMoves := 5
global wheelMoved := false
invalidMove := false
global prevmove := ""

; Définition des actions et de leurs séquences de mouvements correspondantes
ResetActions:
global actions := { "U": { action: Func("ToggleRestoreOrOverview"), description: allMinimized ? "Restaurer toutes les applications" : "Vue d'ensemble" }
				  , "UL": { action: Func("PreviousTab"), description: "Onglet précédent" }
				  , "ULD": { action: Func("PrevVirtualDesktop"), description: "Bureau virtuel précédent" }
				  , "ULDR": { action: Func("NewVirtualDesktop"), description: "Nouveau Bureau virtuel" }
				  , "ULR": { action: Func("ReopenLastTab"), description: "Rouvrir l'onglet fermé" }
				  , "UR": { action: Func("NextTab"), description: "Onglet suivant" }
				  , "URD": { action: Func("NextVirtualDesktop"), description: "Bureau virtuel suivant" }
				  , "URDL": { action: Func("NewVirtualDesktop"), description: "Nouveau Bureau virtuel" }
				  , "URL": { action: Func("OpenNewTab"), description: "Ouvrir un nouvel onglet" }
				  , "D": { action: Func("MinimizeAllWin"), description: allMinimized ? "Restaurer toutes les applications" : "Minimiser toutes les applications" }
				  , "DU": { action: Func("Refresh"), description: "Rafraichir" }
				  , "DRUL": { action: Func("PreviousApp"), description: "App préc" }
				  , "L": { action: Func("PreviousApp"), description: "Application précédente" }
				  , "LD": { action: Func("MG_RButton_LD"), description: "WinMinimize" }
				  , "R": { action: Func("NextApp"), description: "Application suivante" }
				  , "RD": { action: Func("MG_RButton_RD"), description: "Fermer Application" } }

Return

; ===========================
; HOTKEYS
; ===========================

; Function Keys
+F1::Reload
CapsLock & F1::Send {Volume_Mute}
+F2::GoSub, SetCapsOff
CapsLock & F2::Send {Volume_Down}
+F3::GoSub, SetCapsOn
CapsLock & F3::Send {Volume_Up}

CapsLock & F4::
	Suspend
	Menu, Tray, % A_IsSuspended ? "Check" : "Uncheck", &Suspend
Return

CapsLock & F5::Reload

+<^>!SC29::SendEvent, √ ; + veut dire la touche Maj, <^ veut dire la touche Ctrl gauche, >! veut dire la touche Alt droite SC29 est le code pour la touche ²
<^>!SC29::Send ³
+<^>!&::Send ¼
<^>!&::Send ½
+<^>!é::SendEvent, ~
<^>!é::É

+<^>!(::@ ; )

+<^>!è::SendEvent, ``
<^>!è::È
+<^>!_::∞

+<^>!ç::SendEvent, {U+5E} ; l'accent circonflexe ^ passe en appuyant sur la touche Majuscule
<^>!ç::Ç
+<^>!à::À

+<^>!=::±

<^>!A::À
<^>!a::Send à

<^>!t::₺
; y
+<^>!u::Send Ù
<^>!u::Send ù
<^>!I::İ
<^>!i::ı
<^>!O::Œ
<^>!o::œ

<^>!p::Send {{}

<^>!^::Send {}}
^::SendEvent, {U+5E} ; ^
+$::Send €
+<^>!$::Send £

; q
<^>!S::Ş
<^>!s::ş
<^>!D::Δ
<^>!d::δ
; f
<^>!G::Ğ
<^>!g::ğ
; hjklm
+<^>!ù::SendEvent, ‰
<^>!ù::SendEvent, {U+B4} ; Chr(180) ; Sends non-dead acute accent
ù::SendEvent, {U+60} ; 96 ; Sends non-dead grave accent
<^>!*::SendEvent, {U+7E} ; ~
; +<^>!*::Send ↔

+<^>!SC56::≥
<^>!SC56::≤
; wx
<^>!C::Ç
<^>!c::Send ç
; v
; <^>!b::₿ ; hotstring ¤b
<^>!b::GoSub, IMCauto
<^>!n::№
+<^>!,::¿
<^>!,::«
+<^>!`;::·
<^>!`;::»
+<^>!SC34::∕
<^>!SC34::\
+<^>!!::¡
<^>!!::…

+<^>!Space:: 
<^>!Space:: 

+SC29::Send {U+B2} ; ²
SC29:: ; ² key
	Send @
Return

; Numpad
~NumLock::
	If (DefaultMode = 1) {
		GetKeyState("NumLock","T")
		SetNumLockState, % GetKeyState("NumLock","T") ? "On" : "Off"
		SToolTip("Num " (GetKeyState("NumLock","T") ? "On" : "Off"))
	} Else {
		SToolTip("7 " Mailn7 "`t`t8 " Mailn8 "`t`t9 " Mailn9 "`n`n4 " Mailn4 "`t`t5 " Mailn5 "`t`t6 " Mailn6 "`n`n1 " Mailn1 "`t`t2 " Mailn2 "`t`t3 " Mailn3 ,5000,8)
		KeyWait Numlock
		GoSub, RemoveToolTip8
	}
Return

NumLock & Numpad1::
SC29 & &::Send %Mailn1% ; ² key
NumLock & Numpad2::
SC29 & é::Send %Mailn2%
NumLock & Numpad3::
SC29 & "::Send %Mailn3% ;" ; comment for highlighting fix
NumLock & Numpad4::
SC29 & a::Send %Mailn4%
NumLock & Numpad5::
SC29 & z::Send %Mailn5%
NumLock & Numpad6::
SC29 & e::Send %Mailn6%
NumLock & Numpad7::
SC29 & q::Send %Mailn7%
NumLock & Numpad8::
SC29 & s::Send %Mailn8%
NumLock & Numpad9::
SC29 & d::Send %Mailn9%

#If GetKeyState("CapsLock", "T")
	à::Send 0
	(::Send 5 ; )
	+à::Send (
	+(::Send À ; )
	+é::Send É
	+è::Send È
	+ç::Send Ç
#If

#If (CheckMousePosition() = 51) ; lower left corner
	MButton::
		If WinActive("ahk_exe SndVol.exe")
			WinClose
		Else Run SndVol.exe
	Return
	WheelDown::Send {Volume_Down}
	WheelUp::Send {Volume_Up}

#If (CheckMousePosition() = 01) ; left edge
	MButton::Send {Volume_Mute}
	^WheelDown::Send {Volume_Down}
	+WheelDown::Send {Volume_Down 5}
	WheelDown::Send {Volume_Down 3}
	^WheelUp::Send {Volume_Up}
	+WheelUp::Send {Volume_Up 5}
	WheelUp::Send {Volume_Up 3}

#If (CheckMousePosition() = 05) ; right edge
	WheelDown::CheckGammaBright(-10)
	WheelUp::CheckGammaBright(+10)

#If

WheelUp::
	If GetKeyState("RButton", "P") ; Need to keep this inside to let RButton drag function to work
		Send {PgUp}
	Else {
		Send {WheelUp}
	}
Return

WheelDown::
	If GetKeyState("RButton", "P") ; Need to keep this inside to let RButton drag function to work
		Send {PgDn}
	Else {
		Send {WheelDown}
	}
Return

; Arrowkeys + Navkeys

RButton::
	MouseGetPos, mouseStartX, mouseStartY
	mousePreviousX := mouseStartX
	mousePreviousY := mouseStartY
	moves := []
	wheelMoved := false
	invalidMove := false
	SetTimer, CheckMouseMove,50
	KeyWait, RButton
	SetTimer, CheckMouseMove, Off
	
	if (wheelMoved) {
		return  ; Ne rien faire si la molette a été utilisée
	}
	
	if (invalidMove and !invalidtooltipsent) {
		STooltip("❌ Séquence annulée : mouvement non attribué")
		invalidtooltipsent := 0
		return
	}
	
	ExecuteAction(moves)
Return

~RButton & WheelUp::
	if (moves.Length() = 0) {
		wheelMoved := true
		Send, {PgUp}  ; Commande "Page haut"
		STooltip("📄🔼 Page haut")
	}
Return

~RButton & WheelDown::
	if (moves.Length() = 0) {
		wheelMoved := true
		Send, {PgDn}  ; Commande "Page bas"
		STooltip("📄🔽 Page bas")
	}
Return

MButton & WheelDown::GoSub, AltSTab
MButton & WheelUp::GoSub, AltFTab

~MButton::
^MButton::
	GoSub, DragMoveWindow
Return

!WheelUp::
!+WheelUp::
!^WheelUp::
!#WheelUp::
!+^WheelUp::
!+#WheelUp::
!^#WheelUp::
!+^#WheelUp::
!WheelDown::
!+WheelDown::
!^WheelDown::
!#WheelDown::
!+^WheelDown::
!+#WheelDown::
!^#WheelDown::
!+^#WheelDown::
	; TODO : the following code block is a workaround to handle
	; virtual ALT calls in WheelDown/Up functions
	GetKeyState, SIZ_AltState, Alt, P
	If ( SIZ_AltState = "U" ) {
		IfInString, A_ThisHotkey, WheelDown
			GoSub, WheelDown
		Else
			GoSub, WheelUp
	}
Return

; =========================== CapsLock
~CapsLock::
	SToolTip("Esc:Calculatice`tF1:Volume Mute`tF2:Volume-`tF3:Volume+`tF4:Suspendre script `tF5:Relancer script`tF6-F12:rien`n`n²:menu`t1:7`t2:8`t3:9`t4:changerMAJmin`t5:parenthèses`t6:centre de mobilité`t7890)=:rien`n`nTab:rien`tA:4`tZ:5`tE:6`tR:-`tT:heure`tY:transparence`tU:matinmidisoir traitement`tI:retrait tirets du texte`tO:rien`tP:aperçu avant impression`t^$:rien`n`n`tQ:1`tS:2`tD:3`tF:+`tG:recherche`tH:ajout raccourci`tJ:AlwaysOnTop`tKLMù*:rien`n`n<:rien`tW:0`tX:/`tC:*`tv:demander à chatGPT d'organiser`tB:CorrigeOrdo`tN:CorrigeCourrier`t,:supp texte sélectionné dans tt le doc`t;:!:rien",3000,10)
	KeyWait, CapsLock
	RemoveToolTip(10)
	If (A_ThisHotkey == "~CapsLock")
		GoSub, SetCapsSwitch
Return

CapsLock & LButton::
	Send {LButton}{LButton}
Return

CapsLock & MButton::
	Send {Volume_Mute}
Return

CapsLock & WheelUp::
	If GetKeyState("LShift")
		AdjustScreenBrightness(+10)
	Else
		Send {Volume_Up 2}
Return

CapsLock & Wheeldown::
	If GetKeyState("LShift")
		AdjustScreenBrightness(-10)
	Else
		Send {Volume_Down 2}
Return

CapsLock & RButton::GoSub, Recherche

CapsLock & Esc::
	If GetKeyState("LAlt")
		Run C:\Windows\System32\Taskmgr.exe
	Else {
		IfWinNotExist, Calculatrice
			Run, C:\Windows\system32\calc.exe
		Else {
			IfWinActive, Calculatrice
				WinMinimize
			Else {
				WinGet, CalcIDs, List, Calculatrice
				If (CalcIDs = 1) ; Calc is NOT minimized
					CalcID := CalcIDs1
				Else
					CalcID := CalcIDs2 ; Calc is Minimized use 2nd ID
				WinActivate, ahk_id %CalcID%
			}
		}
	}
Return
CapsLock & SC29:: ; ² key
	UpdateTime()
	Menu, MainMenu, Show
Return
CapsLock & &::Send 7
CapsLock & é::Send 8
CapsLock & "::Send 9 ;" ; comment for highlighting fix
CapsLock & '::
	If GetKeyState("LAlt") {
		If GetKeyState("LShift")
			GoSub, ConvertInv
		Else If GetKeyState("LCtrl")
			GoSub, ConvertSwap
		Else {
			If (convSwitch := !convSwitch)
				GoSub, ConvertCap
			Else
				GoSub, ConvertSentence
		}
	} Else If GetKeyState("LShift") {
		If GetKeyState("LCtrl")
			GoSub, ConvertSentence
		Else
			GoSub, ConvertUpper
	} Else If GetKeyState("LCtrl")
		GoSub, ConvertLower
	Else {
		Menu, HConvertMenu, Show ;è
	}
Return
CapsLock & (::
	If GetKeyState("LCtrl") {
		Launchenclose("par")
	} Else If GetKeyState("LShift") {
		Launchenclose("bra")
	} Else If GetKeyState("LAlt") {
		Launchenclose("gui")
	} Else
		Launchenclose()
Return
CapsLock & -::
	If GetKeyState("LCtrl") {
		IfWinNotExist, Table des caractères
			Run C:\Windows\System32\charmap.exe
		Else {
			IfWinActive, Table des caractères
				WinMinimize
			Else
				WinActivate, Table des caractères
		}
	} Else
		Run C:\Windows\System32\mblctr.exe
Return

; CapsLock & Tab::
CapsLock & a::Send 4
CapsLock & z::Send 5
CapsLock & e::Send 6
CapsLock & r::Send -
CapsLock & t::SendTime()
CapsLock & y::GoSub, TransCycle
CapsLock & u::GoSub, ConvSelect1
CapsLock & i::GoSub, ConvSeparateLines
; CapsLock & o::
CapsLock & o::MonitorInfo()
CapsLock & p::Send ^!i ; aperçu avant imp
; CapsLock & ^::

CapsLock & q::Send 1
CapsLock & s::Send 2
CapsLock & d::Send 3
CapsLock & f::Send {+}
CapsLock & g::GoSub, Recherche
CapsLock & h::GoSub, S_AddHotstring
CapsLock & j::GoSub, S_AlwaysOnTop
; CapsLock & k:
; CapsLock & l::
; CapsLock & m::

; CapsLock & ù::
; CapsLock & *::

CapsLock & w::Send 0
CapsLock & x::Send /
CapsLock & c::Send *
Capslock & v::GoSub, PreadGPT
; CapsLock & b:: uniquement dans word, voir plus bas #If
; CapsLock & n:: uniquement dans word, voir plus bas #If
; CapsLock & ,:: uniquement dans word, voir plus bas #If

#If (WinActive("ahk_exe WINWORD.exe") OR WinActive ("ahk_exe wfica32.exe"))
	CapsLock & ,::CorrigeSel()


	CapsLock & b::
		If GetKeyState("LAlt", "D")
			GoSub, CorOrdo
		Else
			If GetKeyState("LShift")
				GoSub, CorCourrier
			Else
				GoSub, CorCourSimple
	Return
	CapsLock & n::
		If GetKeyState("LAlt")
			GoSub, Cor30j
		Else
			GoSub, CorEspace
	Return
#If


