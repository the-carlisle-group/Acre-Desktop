 decode←{
     CODE.startSV 0:
     CODE.SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     CODE.decode ⍵
⍝ ⍵ Array Notation encoding
⍝ ← original array represented by ⍵
⍝ Phil Last 2015-12-12
 }
