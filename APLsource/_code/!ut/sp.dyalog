 sp←{
     ⍵{(⍺/⍨⍵)(⍺/⍨~⍵)}⍺⍺⊣⍵
⍝ separate
⍝ ⍵ any list
⍝ ⍺⍺ boolean vector 1 | 0 per each ⍵
⍝    or function to return such
⍝ ← two lists y n
⍝   y - ⍵ where ⍺⍺ true
⍝   n - ⍵ where ⍺⍺ false
 }
