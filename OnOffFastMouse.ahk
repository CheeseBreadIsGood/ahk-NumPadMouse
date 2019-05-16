#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#Persistent
SetDefaultMouseSpeed, 0 

; SETTINGS
; --------
; futz with these to get the movement as you'd like it
; the settings below are the ones i liked after just
; a few minutes of playing around
distance = 10         ; - how far the mouse moves each turn of the timer
multiplier = 1.08     ; - how much farther (exponentially) the mouse moves in
                      ;   a direction the longer you hold that direction down
CFKM = 30             ; - how often to run the timer
s::
w::
d::
a::


SetTimer, CheckForKeyMouse, %CFKM%

return
CheckForKeyMouse:

	GetKeyState("s") ? (d*=multiplier) : (d:=1)
	GetKeyState("w") ? (u*=multiplier) : (u:=1)
	GetKeyState("d") ? (r*=multiplier) : (r:=1)
	GetKeyState("a") ? (l*=multiplier) : (l:=1)	
	y := (d-u) * distance
	x := (r-l) * distance
	MouseMove, x, y, , R
;Using the appskey to turn on/off this mouse stuff
AppsKey::Suspend,Toggle

return