 assign←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     rec←⍺⍺ ⋄ arg←⍵
     ns←(⍎SV.EX).⎕NS''
     as←arg⍳¨SV.AS
     nam←as↑¨arg
     nam as arg/⍨←⊂~nam∊∊nam
     val←rec¨(1+as)↓¨arg
     ns⊣ns.{⍎⍺,'←⍵'}/nam,⍪val
⍝ ⍺⍺ cat decode
⍝ ⍵  pairs - 'name←val'
⍝ ←  ns
 }
