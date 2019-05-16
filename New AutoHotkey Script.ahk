#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
AppsKey & Ctrl::    ; AppsKey, then Ctrl
^AppsKey::          ; Ctrl, then AppsKey
    Hotkey, *r, ^@r, On
    [color=darkgray]; additional hotkeys can be enabled here.[/color]
return
AppsKey & Ctrl Up:: ; Modifier(s) released
^AppsKey Up::
    Hotkey, *r, Off
    [color=darkgray]; additional hotkeys must be disabled here.[/color]
return
^@r:    ; Label for identification only, can be anything.
    msgbox, hello... %A_ThisLabel%
return