SetTitleMatchMode 1
#IfWinActive Cyberpunk 2077	; The first 2 lines set the script to work only within the game


; Holding Y performs a forward K-HOP and repeats jump to maintain momentum until released.
; The direction is only forwards - NO DIRECTION CHANGE with WASD - W is being pressed constantly!
; NOTE: You may need to tweak the LOOP valie depending on your Kereznikov item stats!
; WRONG LOOP VALUE WILL NOT WORK BECAUSE OF BAD TIMING!!!
; For the first "common kereznikov" the LOOP value starts at 40.
; For updated versions like "rare kereznikov" increase by 10 until it starts working.
; If you also equipped "nanorelays" increase more until it starts working.
; The longer the bullet-time stat in seconds, the more repeats are needed to sync the release.
; Longer bullet-time = increase value for more repeats or it will not work!
; If you don't intend to use bullet-time otherwise K-HOP is best with the "common Kereznikov".

y::khopstart()
y UP::khopstop()
khopstart()
{
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
	Send {space up}
	Send {w down}
	sleep, 100
	loop
	{
		Send {space down}
		Send {space up}
	}
}
khopstop()
{
	Send {w up}
	Send {RButton up}
	Reload
}
return

; Keep pressing U with good timing for Maneuvering System bunny hop.
; You MUST be in the AIR close enough to the ground to execute the dash with immediate jump macro.
; It is advisable first to learn how to do it for real and understand the timing in order to understand the macro.

u::
Send {w down}
Sleep, 10
Send {w up}
Sleep, 10
Send {w down}
Sleep, 10
Send {w up}
Sleep, 200
Send {space down}
Sleep, 10
Send {space up}
Sleep, 100
return


; HIGH JUMP scrips for normal Fortified Ankles(charged jump) + Maneuvering system (BOTH MUST BE EQUIPPED).


; Press F3 for charged jump - dash - charged jump combo WHILE HOLDING A MOVEMENT BUTTON.
; This is the highest jump!
; ATTENTION: FALLING DAMAGE ON SAME OR BIGGER HEIGHT!

F3::
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
Send {space down}
Sleep, 1000
Send {space up}
return

; Press F4 for charged jump - dash combo WHILE HOLDING A MOVEMENT BUTTON.
; Feel free to chain a manual second jump within a short timeframe.

F4::
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

; Same jump scripts, but without holding WASD.

; Press F6 for charged jump - forward dash - charged jump combo WITHOUT holding WASD buttons.
; This is the highest jump!
; ATTENTION: FALLING DAMAGE ON SAME OR BIGGER HEIGHT!
; Move WASD only after the forward dash or it won't work!

F6::
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
Send {space down}
Send {w down}
Sleep, 1000
Send {space up}
Send {w up}
return

; Press F7 for charged jump - forward dash combo WITHOUT holding WASD buttons.
; Move WASD only after the forward dash or it won't work!

F7::
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

; F1 is forward k-hop boost + 1 power jump + 1 dash
; Feel free to chain a manual second jump within a short timeframe.
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

; F2 is K-HOP forward boost only

F2::
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
Sleep, 20
Send {space up}
return


; BONUS quality of life scrips :)


XButton2::w			; Mouse side keys 4 and 5 bound to W and S for walking.
return
XButton1::s
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