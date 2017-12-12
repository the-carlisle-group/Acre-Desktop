 descape←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     s←⍵
     ~∨/e←s=SV.EE:s
     i←(⍳5)∘.+e/⍳⍴e                         ⍝ escape + 4 hex digits
     e[i]←~e[i]                             ⍝ where s → 0; where hex → 1
⍝ above is NOT redundant given ~e in last line
⍝                          ⎕D,   'ABCDEF'  ,⎕D,  'abcdef'
     s[⊣⌿i]←⎕UCS 16⊥16|'0123456789ABCDEF0123456789abcdef'⍳s[1↓i] ⍝ decode
     ⍵{5=⍴⍺:⍬⍴⍵ ⋄ ⍵}s/⍨~e                   ⍝ rem hex
⍝ ⍵ string with escape sequences
⍝ ← decoded string
⍝ Phil Last 2015-05-20
 }
