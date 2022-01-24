; This provides a bunch of useful routines in a static place
; so that serially loaded programs can reliably call them.
.segment "SERIAL_VECTOR"
; $fe00
  .repeat 256, I
    .byt I
  .endrep
; $ff00
  jmp SerialBootRetry
; $ff03
  jmp WaitVblank
; $ff06
  jmp ScreenOn
; $ff09
  jmp ScreenOff
; $ff0c
  jmp PutHex
; $ff0f
  jmp PutStringImmediate
; $ff12
  jmp PutDecimal
; $ff15
  jmp ClearName
; $ff18
  jmp ClearNameRight
; $ff1b
  jmp WaitForKey
; $ff1e
  jmp IndexToBitmap
; $ff21
  jmp ClearOAM
; $ff24
  jmp KeyRepeat
; $ff27
  jmp ReadJoy
; $ff2a
  jmp ReadJoy8bits
; $ff2d
  jmp mul8
; $ff30
  jmp div8_global
; $ff33
  jmp getAngle
; $ff36
  jmp SpeedAngle2Offset
; $ff39
  jmp unpb53_some
; $ff3c
  jmp huge_rand
; $ff3f
  jmp SerialBoot
