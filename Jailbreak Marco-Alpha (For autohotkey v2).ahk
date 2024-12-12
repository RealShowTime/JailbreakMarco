#Persistent
#SingleInstance Force

TrayTip, 注意！, 請按F2來查看幫助, 1, 2

isKeyPressed := false
toggle := false
clickToggle := false
resetToggle := false

; 防按`(啟動時自動啟用)

$`::
    Send, `` ;; 原本的 ` 鍵打回來(防止輸入時無法顯示)
    SetTimer, PressBacktick, -200
return

PressBacktick:
    Send, ``
return

; F2 Help
F2:: 
MsgBox , 𝑯𝒆𝒍𝒑 `n ▲F2:Get Help `n ▲F3:Auto Reset (press "R") `n ▲F4:Auto Clicker `n ▲F5:Auto Guns `n ▲F7:Exit `n ●F8:🐣 `n ▲Anti Press"```"(Auto Execute) `n -------------------------------- `n ●:Working `n ▲Needs Attention or Partially Working `n ✖:Not Working `n -------------------------------- `n Version:0.69.420(Alpha). `n © 2024 JailbeakMarco. All rights reserved. `n `n ፏፏጿጯጟጯጏጟፏጯጯ
return

; F3 AutoReset  
F3::
resetToggle := !resetToggle
return

#If resetToggle  
R::
    Sleep, 100
    Send, {Esc}
    Sleep, 100
    Send, R
    Sleep, 100
    Send, {Enter}
    return
#If  

; F4 AutoClicker
F4:: 
clickToggle := !clickToggle 
if clickToggle {
    TrayTip, Start Clicking, 💀, 250
    SetTimer, ClickMouse, 125
} else {
    TrayTip, Stop Clicking, 💀, 250
    SetTimer, ClickMouse, Off
}
return

ClickMouse:
Click
return

; F5 AutoGuns
F5:: 
toggle := !toggle
if toggle {
    Gosub, SendCommands
}
return

; F7 Exit
F7::
exitapp
return

; F8 Sth cool :troll:
F8::
Run, https://reurl.cc/RLvQg9
Tooltip, Cool
return

; Guns
SendCommands:
SetKeyDelay, 0, 5
Send, {\}{Down}{Right}{Enter}
Send, {Left}{Left}{Left}{Enter}
Send, {Right}{Right}{Right}{Right}{Enter}
Send, {Left}{Left}{Enter}
Send, {Right}{Right}{Right}{Right}{Right}{Right}{Enter}
Send, {Right}{Enter}
Send, {Right}{Right}{Enter}
Send, {Left}{Left}{Left}{Left}{Left}{Enter}
Send, {Up}{Left}{Down}{Enter}
Send, {Right}{Enter}
Send, {Right}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}
Send, {\}}
TrayTip, Success, 💀, 250
toggle := false
return

;Last update:12/11/24 07:15:00 (PST)
