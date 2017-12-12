 encode←{
     CODE.startSV 0:
     CODE.SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     CODE.encode ⍵
⍝ ⍵ APL array
⍝ ← inline Array Notation encoding of ⍵
⍝ Phil Last 2015-12-12
 }
