#NoEnv  ; Recommended for performance and compatibility with future AutoHo releases.; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; Always on Top
^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
return

; Disable Always on Top
!SPACE::  Winset, Alwaysontop, off , A
return

; Suspend AutoHotKe
#SPACE::Suspend ; Win + SPACE
return

#IfWinActive

#IfWinActive ahk_class AcrobatSDIWindow
{
	$F1::
	{
		Send, +^H
		MouseGetPos, xpos, ypos
		;MouseClick, left, 2019, 314
		MouseMove, xpos, ypos
		; sleep 1000
		; MouseMove, xpos, ypos 
		return
	}
	~MButton::
	{
		Send, +^H
		;sleep 500
		return
	}
	
}
return



#IfWinActive ahk_exe MPManager.exe
LAlt & Tab::Send,{Alt down}{TAB down}{TAB up}{Alt up}{Alt down}{TAB down}{TAB up}{Alt up}
return

#IfWinActive
~MButton::Send, {Alt down}{TAB down}{TAB up}{Alt up}
;WinActivate, ahk_exe chrome.exe
return

IfWinActive  ahk_exe chrome.exe
{
	$F2::Send ^{PgUp} ; prev tab
	$F3::Send ^{PgDn} ; next tab
}
return


$F4::Send, {Ctrl down}c{Ctrl up}
return

$F5::Send, {Alt down}{TAB down}{TAB up}{Alt up}
return

$F6::Send, {Ctrl down}v{Ctrl up}
return

$F7::Send, {Alt down}{Shift down}{Shift up}{Alt up}
return

#IfWinActive


