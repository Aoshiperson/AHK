;@Ahk2Exe-UpdateManifest 2
#Requires AutoHotkey v2.0
#SingleInstance Force

ProcessSetPriority "High"

; 大写锁定全局关闭并失效
SetCapsLockState "AlwaysOff"
CapsLock::return

#HotIf WinActive("ahk_exe Azeroth-Win64-Shipping.exe")

; Shift + 滚轮上滑 → Shift + 1
+WheelUp::Send "{Blind}1"

; Shift + 滚轮下滚 → Shift + 2
+WheelDown::Send "{Blind}2"

#HotIf
