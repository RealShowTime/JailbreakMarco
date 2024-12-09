;感謝您使用這個很爛的越獄宏，這花了我很多時間及精力:DD

#Persistent
#SingleInstance Force

TrayTip, 注意！, 請按F2來查看幫助, 1, 2

isKeyPressed := false
toggle := false
clickToggle := false
resetToggle := false

; 防按`(啟動時自動啟用)
$`:: 
if (!isKeyPressed) {
    isKeyPressed := true
    Sleep, 100
    Send, `{`} 
}
return

ResetKeyPress:
isKeyPressed := false
return

; F2 Help
F2:: 
MsgBox , 𝑯𝒆𝒍𝒑 `n ●F2:Get Help `n ▲F3:Auto Reset (press "R") `n ●F4:Auto Clicker `n ●F5:Auto Guns `n ●F7:Exit `n ●F8:🐣 `n ▲Anti Press"n"(Auto Execute) `n -------------------------------- `n ●:Working `n ▲Working (Maybe) `n ✖:Not Working `n -------------------------------- `n Version:0.69.420(Alpha). `n © 2024 JailbeakMarco. All rights reserved. `n `n 𝐎𝐟𝐟𝐢𝐜𝐚𝐥 𝐖𝐞𝐛𝐬𝐢𝐭𝐞-𝐛𝐢𝐭.𝐥𝐲/𝐉𝐚𝐢𝐥𝐛𝐫𝐞𝐚𝐤𝐌𝐚𝐫𝐜𝐨
return

; F3 AutoReset
F3::
resetToggle := !resetToggle  ; 切換開關
return

R::
if (resetToggle)  
{
    Sleep, 100
    Send, {Esc}
    Sleep, 100
    Send, R
    Sleep, 100
    Send, {Enter}
}
return

; F4 AutoClicker
F4:: 
clickToggle := !clickToggle 
if clickToggle {
    TrayTip, Start Clicking, 💀, 250 ; 0.25秒的訊息通知
    SetTimer, ClickMouse, 125 ; 每125毫秒點擊一次
} else {
    TrayTip, Stop Clicking, 💀, 250 ; 0.25秒的訊息通知
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

; F8 RickRoll :troll:
F8::
Run, https://www.youtube.com/watch?v=dQw4w9WgXcQ
Tooltip, Never Gonna Give You Up 
return

; Guns
SendCommands:
SetKeyDelay, 0, 5 ; 延遲
Send, {\}{Down}{Right}{Enter} ; Revolver
Send, {Left}{Left}{Left}{Enter} ; Pistol
Send, {Right}{Right}{Right}{Right}{Enter} ; Flintlock
Send, {Left}{Left}{Enter} ; Rifle
Send, {Right}{Right}{Right}{Right}{Right}{Right}{Enter} ; Forcefieldlauncher
Send, {Right}{Enter} ; Plasmapistol
Send, {Right}{Right}{Enter} ; Sniper
Send, {Left}{Left}{Left}{Left}{Left}{Enter} ; Sword
Send, {Up}{Left}{Down}{Enter} ; 切到另一類
Send, {Right}{Enter} ; C4
Send, {Right}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter}{Enter} ; GetMaxC4Ammo
Send, {\}} ; 取消\選取模式
TrayTip, Success, 💀, 250 ; 0.25秒的訊息通知
toggle := false
return

;Last update:12/9/24 04:02:17 (PST)