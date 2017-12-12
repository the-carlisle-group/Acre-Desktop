 format←{⍺←⊢
     CODE.startSV 0:
     CODE.SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍺ CODE.format ⍵
⍝ ⍺ see CODE
⍝ ⍵ APL array
⍝ ← pretty Array Notation encoding of ⍵
⍝ Phil Last 2015-12-12
 }
