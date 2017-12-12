 space←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⎕NULL=arg←⍵:SV.QN
     0∊⍴mem←members arg:SV.(LB CS AS RB) ⍝ SV.LB SV.CS SV.AS LB.RB
     rank2code↑⍺⍺ member/mem
⍝ ⍺⍺ encode
⍝ ⍵  space or ⎕NULL
⍝ ←  2d members
⍝    name value
⍝    nam. valu.
⍝    ...  ...
⍝ Phil Last 2017-02-16 19.24
 }
