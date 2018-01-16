 session←{
     SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     {
         i←{∇⍣(z≢∊z)⊢⍵,⊂z←⍞}⊂⍞,0⍴⍞←SV.IN⍴' '
         '→'∊i:'bye'
         ∇ ⎕←format decode i
     }encode 0
⍝ indent, await input until blank line or '→', decode, format
⍝ Phil Last 2017-09-20 22.34
 }
