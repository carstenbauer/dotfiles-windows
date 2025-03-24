#Requires AutoHotkey v2.0

; ---------------
; REMAPS
; ---------------

; CapsLock -> "Mission Control"
$CapsLock::
{
	Send "#{Tab}"
}
$+CapsLock::CapsLock

; ALT + SPACE -> Open Start Menu
!Space::Send "^{ESC}"

; Horizontal Scrolling
+WheelDown::Send "{WheelRight}"
+WheelUp::Send "{WheelLeft}"

; CTRL + Q -> quit app / windows
^q::Send "!{F4}"

; CTRL + SHIFT + 5 -> Snipping tool
^+5::Send "#+{S}"

; WIN + M -> minimize current window
#m::WinMinimize("A")

; WIN + S -> ß
#s::Send "ß"

; CTRL + SHIFT + P -> move windows to next monitor (WIN + SHIFT + RIGHT)
; $^+p::Send "#+{Right}"
; CTRL + Windows + ALT + LEFT/RIGHT -> move windows to next monitor
$^#!Left::Send "#+{Left}"
$^#!Right::Send "#+{Right}"

; In Outlook, map CTRL + ALT + left/right to ALT + left/right
; to navigate weeks in calendar view
#HotIf WinActive("ahk_exe OUTLOOK.EXE")

^!Left::Send "!{Up}"
^!Right::Send "!{Down}"

#HotIf

; In Explorer, map CTRL + ALT + left/right to ALT + left/right
; to go backwards/forwards
#HotIf WinActive("ahk_exe EXPLORER.EXE")

$^!Up::Send "!{Left}"
$^!Left::Send "!{Left}"
; ^!Down::Send "!{Right}"

#HotIf

; !c::Send "^c"
; !v::Send "^v"
; !z::Send "^z"
; !r::Send "^r"
; !s::Send "^s"
; !w::Send "^w"
; !t::Send "^t"

; !tab::Send "^{Tab}"
; !+tab::Send "^+{Tab}"

; <^Tab::AltTab
; <+Tab::ShiftAltTab

; ---------------
; SNIPPETS
; ---------------
:*:;;kuk::Liebe Kolleginnen und Kollegen,`n`n
:*:;;vg::Viele Grüße`nCarsten
:*:;;bg::Beste Grüße`nCarsten
:*:;;fvg::Viele Grüße`nCarsten Bauer
:*:;;fbg::Beste Grüße`nCarsten Bauer
:*:;;mfg::Mit freundlichen Grüßen`nCarsten Bauer
:*:;;drmfg::Mit freundlichen Grüßen`nDr. Carsten Bauer
:*:;;ys::Yours sincerely, `nCarsten Bauer
:*:;;dlr::Deutsches Zentrum für Luft- und Raumfahrt
:*:;;eur::€
; ::ftw::Free the whales ; replaces after space or enter is pressed

; ---------------
; UMLAUTE
; ---------------
#u::{
    ih := InputHook("L1 M")
    ih.Start()
    ih.Wait()
    switch ih.Input {
        case "a": Send("ä")
        case "o": Send("ö")
        case "u": Send("ü")
        case "s": Send("ß")
        case "A": Send("Ä")
        case "O": Send("Ö")
        case "U": Send("Ü")
        default: Send(ih.Input) ; If another key is pressed, send it normally
    }
}

#a::Send "ä"
#o::Send "ö"
; #u::Send "ü"
#+a::Send "Ä"
#+o::Send "Ö"
; #+u::Send "Ü"

; ---------------
; TEXT NAVIGATION
; ---------------
$!Left::Send "{Home}"
$!Right::Send "{End}"
$!Up::Send "{Lctrl down}{Home}{Lctrl up}"
$!Down::Send "{Lctrl down}{End}{Lctrl up}"

$#Left::Send "{ctrl down}{Left}{ctrl up}"
$#Right::Send "{ctrl down}{Right}{ctrl up}"
$#+Left::Send "{ctrl down}{shift down}{Left}{shift up}{ctrl up}"
$#+Right::Send "{ctrl down}{shift down}{Right}{shift up}{ctrl up}"

$!+Left::Send "{shift down}{Home}{shift up}"
$!+Right::Send "{shift down}{End}{shift up}"
$!+Up::Send "{Ctrl Down}{shift down}{Home}{shift up}{Ctrl Up}"
$!+Down::Send "{Ctrl Down}{shift down}{End}{shift up}{Ctrl Up}"

$^BS::Send "{Del}"
$^#BS::Send "{LCtrl down}{Del}{LCtrl up}"
$#BS::Send "{LCtrl down}{BS}{LCtrl up}"
$^+BS::Send "{LCtrl down}{BS}{LCtrl up}"
$!BS::Send "{LShift down}{Home}{LShift Up}{Del}"