#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

End::t:=!t
#If (t<>"" && t<>0)
w::
a::
s::
d::
loop {
  if getkeystate("w","P")
    moveCur(x,-10)
      if getkeystate("a","P")
        moveCur(-10,y)
          if getkeystate("s","P")
            moveCur(x,10)
              if getkeystate("d","P")
                moveCur(10,y)
  sleep 15
} until  !( getkeystate("w","P") 
	||    getkeystate("a","P") 
	||      getkeystate("s","P") 
	||        getkeystate("d","P") )
return
moveCur(x="0",y="0") { 
    DllCall("mouse_event",UInt,1,Int,x,Int,y)
}
#If