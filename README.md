# JailbreakMarco
這個一個關於Roblox Jailbreak的宏
- ✅ 自訂各功能快捷鍵
  - ```ahk
    F2:: ;在這裡更改快捷鍵~
    MsgBox , bit.ly/JailbreakMarco
    ```
- ✅ 一秒切槍(G hub下去)
  -```ahk
   ; Guns
   SendCommands:
   SetKeyDelay, 0, 5 ; 延遲
   Send, {\}{Down}{Right}{Enter} ; Revolver
   Send, {\}} ; 取消\選取模式
   TrayTip, Success, 💀, 250 ; 0.25秒的訊息通知
   toggle := false
   return ```
