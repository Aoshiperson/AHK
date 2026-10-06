;@Ahk2Exe-UpdateManifest 2
#Requires AutoHotkey v2.0
#SingleInstance Force

ProcessSetPriority "High"

; 大写锁定全局关闭并失效
SetCapsLockState "AlwaysOff"
CapsLock::return

#HotIf WinActive("ahk_exe Azeroth-Win64-Shipping.exe")

; Shift + 滚轮上滑 → Shift + 9
+WheelUp::Send "{Blind}9"

; Shift + 滚轮下滚 → Shift + 0
+WheelDown::Send "{Blind}0"

; 右键按下：自动带上 Shift，右键按下后延迟 50ms 再放开 Shift
$RButton:: {
    if !GetKeyState("Shift", "P") {
        Send "{Shift down}"
        Sleep 10
        Send "{RButton down}"
        Sleep 500
        Send "{Shift up}"
    } else {
        Send "{RButton down}"
    }
}

; 右键松开：只补发右键抬起
$RButton up::Send "{RButton up}"
             Send "{Shift up}"

#HotIf
