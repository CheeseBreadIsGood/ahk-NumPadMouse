#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0 ; Sets the delay of mouse speed to instant
w::MouseMove, 0, -25, 100, R ; when you press w, mouse will move up 25 pixels
s::MouseMove, 0, 25, 100, R ; when you press s, mouse will move down 25 pixels
a::MouseMove, -25, 0, 100, R ; when you press a, mouse will move left 25 pixels
d::MouseMove, 25, 0, 100, R ; when you press d, mouse will move right 25 pixels
q::MouseClick, left ; when you press q, mouse will left click
e::MouseClick, right ; when you press e, mouse will right click
x::MouseClick, WheelDown ; when you press x, mouse will scroll down
2::MouseClick, WheelUp ; when you press 2, mouse will scroll up
^!z::ExitApp ; when you press ctrl+alt+z, the app will exit