 d2s←{⎕IO←⎕ML←0                              ⍝ origin 0 on 0001-01-01
     y m d←↓⍉↑,↓⍵                            ⍝ separate years months & days
     Y←{(⍵×365)+(⌊⍵÷4)-(⌊⍵÷100)-⌊⍵÷400}y-1   ⍝ days for full years
     M←(+\0 0 31 28,10⍴5⍴31 30)[m]           ⍝ days to previous month end
     M←M+(m>2)∧(0=4|y)>(0=100|y)>(0=400|y)   ⍝ + leap day after Feb
     (⍵∨.≠0)×Y+M+d                           ⍝ total proleptic gregorian days
⍝ ⍵ yyyy mm dd - 3 cols
⍝ ← dddd       - rank 1
⍝ aka "Gregorian Serial Date"
 }
