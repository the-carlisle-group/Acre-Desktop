 amend←{⍺←⊢
     CODE.startSV 0:
     CODE.SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍺ CODE.amend ⍵
⍝ ⍵ APL array
⍝ ← maybe amended via format ⎕ED decode
⍝ Phil Last 2015-12-15
 }
