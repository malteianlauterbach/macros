#NoEnv 
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, shell32.dll, 283 



#NoEnv
SendMode Input
#InstallKeybdHook
;#InstallMouseHook ;<--You'll want to use this if you have scripts that use the mouse.
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

;;The lines below are optional. Delete them if you need to.
#HotkeyModifierTimeout 60 ; https://autohotkey.com/docs/commands/_HotkeyModifierTimeout.htm
#KeyHistory 200 ; https://autohotkey.com/docs/commands/_KeyHistory.htm ; useful for debugging.
#MenuMaskKey vk07 ;https://autohotkey.com/boards/viewtopic.php?f=76&t=57683
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm ;prevent taskbar flashing.
;;The lines above are optional. Delete them if you need to.


#if (getKeyState("F23", "P")) 
F23::return ;this line is mandatory for proper functionality

escape::tooltip, [F23] You might wish to not give a command to escape. Could cause problems. IDK.


F1::
F2::
F3::
F4::
F5::
F6::
F7::
F9::
F8::
F10::
F11::
F12::tooltip, you pressed the function key %A_thishotkey% on the [F23] keyboard
;;Note that the assignment on the above line will apply to ALL prior lines ending in "::"


;;------------------------NEXT ROW--------------------------;;

`::
1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
-::
=::
backspace::tooltip, [F23]  %A_thishotKey%

;;------------------------NEXT ROW--------------------------;;

tab::tooltip, [F23]  %A_thisHotKey%
q:: Send, Hello
w:: Send, ok
e:: Run, D:\Adobe\Adobe Photoshop CC 2019\Photoshop.exe
r:: Run, C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe
t:: Run, C:\Program Files\obs-studio\bin\64bit\obs64.exe
u:: Run, D:\Adobe\Adobe Illustrator 2020\Support Files\Contents\Windows\Illustrator.exe
i:: Run, D:\Adobe\Adobe InDesign CC 2019\InDesign.exe
o:: Run, C:\WINDOWS\system32\cmd.exe
\::tooltip, [F23]  %A_thisHotKey%


;;------------------------NEXT ROW--------------------------;;

a::Run, C:\Program Files (x86)\Steam\Steam.exe
s::Run, C:\Users\malte\AppData\Local\Programs\Microsoft VS Code\Code.exe
d::
f::
g::
h::
j::
K::
l::
;::

'::

;;------------------------NEXT ROW--------------------------;;

z::
x::
c::
v::
b::
n::
m::
,::
.::
/::tooltip, [F23]  %A_thishotKey%

space::
tooltip, [F23] SPACEBAR. This will now clear remaining tooltips.
sleep 500
tooltip,
return


;;===================== MODIFIERS =========================;;

;;Keep these commented out, as they are!
;Lshift::tooltip, do not use
;Lctrl::tooltip, do not use
;Lwin::tooltip, do not use
;Lalt::tooltip, do not use

;Ralt::tooltip, do not use
;Rwin::tooltip, do not use
;appskey::tooltip, This is not a modifier, but I replaced it with INTERNATIONAL4 (SC079) anyway, because it was able to misbehave.
;Rctrl::tooltip, do not use
;Rshift::tooltip, do not use


;;If you leave the modifier keys alone, it allows for lines like the ones below:
;+z::tooltip, you pressed SHIFT Z on the F23 keyboard.
;^z::tooltip, you pressed CTRL Z on the F23 keyboard.
;!z::tooltip, you pressed ALT Z on the F23 keyboard. I don't recommend this... ALT is dangerous because of menu acceleration, even if you try to disable it like I have
;^!z::tooltip, you pressed CTRL SHIFT Z on the F23 keyboard.
;;Etc.
;;However, I use few to no modifiers on my secondary keyboards... I prefer tap dance instead. The decision is up to you.


SC070::tooltip, [F23] Lshift -to-> SC070-International 2
SC071::tooltip, [F23] LCtrl -to-> SC071-Language 2
SC072::tooltip, [F23] LWin -to-> SC072-Language 1
SC073::tooltip, [F23] LAlt -to-> SC073-International 1

SC077::tooltip, [F23] RAlt -to-> SC077-Language 4
SC078::tooltip, [F23] RWin -to-> SC078-Language 3
SC079::tooltip, [F23] AppsKey -to-> SC079-International 4
SC07B::tooltip, [F23] RCtrl -to-> SC07B-International 5
SC07D::tooltip, [F23] RShift -to-> SC07D-International 3

;;================= LOCKING KEYS ======================;;

F20::tooltip, [F23] CapsLock -to-> SC06B-F20
SC05C::tooltip, [F23] NumLock -to-> SC05C-International 6
SC061::tooltip, [F23] ScrollLock -to-> SC061 %A_thishotKey%

;;================= NEXT SECTION ======================;;

PrintScreen::tooltip, [F23] %A_thishotKey%
;;ScrollLock::do not use
SC07E::tooltip, [F23] Pause -to-> SC07E-Brazillian comma

;;Don't use the 3 keys below for your 2nd keyboard!
;Pause::msgbox, The Pause/Break key is a huge PITA. That's why I remapped it to SC07E
;Break::msgbox, Or is it THIS key? WHO KNOWS!
;CtrlBreak::msgbox

insert::
delete::tooltip, [F23] %A_thishotKey%

home::
end::tooltip, [F23] %A_thishotKey%

pgup::
pgdn::tooltip, [F23] %A_thishotKey%

;;================= NEXT SECTION ======================;;

up::
down::
left::
right::tooltip,[F23] %A_thishotKey%

;;================== THE NUMPAD ======================;;

numpad0::
numpad1::
numpad2::
numpad3::
numpad4::
numpad5::
numpad6::
numpad7::
numpad8::
numpad9::tooltip,[F23] %A_thishotKey%


;;NumLock::tooltip, DO NOT USE THIS IN YOUR 2ND KEYBOARD!
numpadDiv::
numpadMult::
numpadSub::
numpadAdd::
numpadEnter::
numpadDot::tooltip, [F23] %A_thishotKey%


#if ;this line will end the F23 secondary keyboard assignments.



;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;+|||||||||+ END OF INTERCEPTION SECOND KEYBOARD F23 ASSIGNMENTS +|||||||||||||+
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;Note that this whole script was written for North American keyboard layouts.
#if

;;*******************************************************************************
;;~~~~~~~~~~~~~DEFINE YOUR NORMAL KEY ASSIGNMENTS BELOW THIS LINE~~~~~~~~~~~~~~~~
;;*******************************************************************************

;;If you assign them BEFORE the second keyboard, they'll overrule it. You don't want that.
#ifwinactive ahk_exe ahk_exe Adobe Premiere Pro.exe
F2::msgbox, You pressed F2 on your normal keyboard while inside of Premiere Pro. `nThis is an autohotkey script by the way - in case you forgot.`nCheck your taskbar to find it.
;; You can of course delete the above line.
#ifwinactive

;;~~~~~~~~~~~~~~~~~DEFINE YOUR FUNCTIONS BELOW THIS LINE~~~~~~~~~~~~~~~~~~~~~~~~~
