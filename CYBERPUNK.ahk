SetTitleMatchMode, 1
SetTitleMatchMode, slow
#IfWinActive Cyberpunk 2077	; The first 2 lines set the script to work only within the game


; Holding F4 performs a forward K-HOP and repeats jump to maintain momentum until released.
; The direction is only forwards - NO DIRECTION CHANGE with WASD - W is being pressed constantly!
; NOTE: You may need to tweak the LOOP valie depending on your Kereznikov item stats!
; For the first "common kereznikov" the LOOP value starts at 40.
; For updated versions like "rare kereznikov" increase by 10 until it starts working.
; If you also equipped "nanorelays" increase more until it starts working.
; The longer the bullet-time stat in seconds, the more repeats are needed to sync the release.
; Longer bullet-time = increase value for more repeats or it will not work!

F4::khopstart()
F4 UP::khopstop()
khopstart()
{
	Send {RButton down}
	loop, 40			; EDIT TIMIMNG VALUE HERE!!! Default is 40.
	{
		sleep, 10
		Send {w down}
		sleep, 10
		Send {w up}
	}
	Send {RButton up}
	Send {w down}
	sleep, 100
	loop
	{
		Send {space}
	}
}
khopstop()
{
	Send {w up}
	Send {RButton up}
	Reload
}
return


; HIGH JUMP scrips for normal Fortified Ankles(charged jump) + Maneuvering system (BOTH MUST BE EQUIPPED).
; ATTENTION: FALLING DAMAGE!


; Press Control + Space for charged jump - dodge combo WHILE HOLDING A MOVEMENT BUTTON.
; You can chain a manual second jump within a short timeframe.

^space::
Send {space down}
Sleep, 500
Send {space up}
Send {c down}
Sleep, 10
Send {c up}
Sleep, 10
Send {c down}
Sleep, 10
Send {c up}
return

; Press F3 for High jump: charged jump - forward dodge combo WITHOUT holding WASD buttons.
; Move WASD only after the forward dodge or it won't work!
; You can chain a second jump.

F3::
Send {space down}
Sleep, 500
Send {space up}
Send {w down}
Sleep, 10
Send {w up}
Sleep, 10
Send {w down}
Sleep, 10
Send {w up}
return


; LONG JUMP scripts.
; MUST HAVE normal Fortified Ankles(charged jump) + Maneuvering system + Kereznikov.

; F1 is forward k-jump + charged jump + forward dodge
; You can chain a manual second jump within a short timeframe.
; REMEBER TO CHANGE THE TIMING VALUE IF NEEDED!

F1::
Send {RButton down}
Send {space down}
loop, 40			; EDIT TIMIMNG VALUE HERE!!! Default is 40.
{
	sleep, 10
	Send {w down}
	sleep, 10
	Send {w up}
}
Send {RButton up}
Sleep, 500
Send {space up}
Send {w down}
Sleep, 10
Send {w up}
Sleep, 10
Send {w down}
Sleep, 10
Send {w up}
return

; F2 is a smaller earlier K-jump forward only - stop mid air with backward dodge.

F2::
Send {space down}
Sleep, 200
Send {RButton down}

loop, 40			; EDIT TIMIMNG VALUE HERE!!! Default is 40.
{
	sleep, 10
	Send {w down}
	sleep, 10
	Send {w up}
}
Send {RButton up}
Sleep, 100
Send {space up}
return


; BONUS quality of life scrips :)

; Mouse side keys 4 and 5 bound to W and Space repeater (autojump).

XButton2::w			
return

XButton1::autojumpstart()
XButton1 UP::autojumpstop()
autojumpstart()
{
	loop
	{
	Send {space down}
	Sleep, 20
	Send {space up}
	}
}
autojumpstop()
{
	Reload
}
return


F8::autoclickstart()		; F8 is an autoclicker for the left mouse button.
F8 UP::autoclickstop()
autoclickstart()
{
	loop
	{
	Send {LButton}
	sleep, 10
	}
}
autoclickstop()
{
	Reload
}
return

F9::				; F9 - hover over the CRAFTING button with your mouse and hold F9 to automate.
Send, {LButton Down}
Sleep, 1000
Send, {LButton Up}
return


^!F11::                ; Ctrl+Alt+F11 suspends the script. Unsuspend from system tray.
MsgBox, 
(
The AHK Script is suspended!
Unsuspend from system tray.
)
Suspend
return