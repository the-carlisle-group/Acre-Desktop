 as←{
     (2>0⊥⍴⍵):⍵
     ⌽↑⍺⍺{(⊂(⊃⍵)⍺⍺ ⍺),⍵}/⌽(⊂∘⊃¨↓⍵),↑1↓¨↓⍵
⍝ associative scan
⍝ ⍺⍺ dyad
⍝ ⍵ array
⍝ ← last dimension associative ⍺⍺ scan of ⍵
⍝   ⍺⍺ as w x y z ←→ w (w ⍺⍺ x) ((w ⍺⍺ x)⍺⍺ y) (((w ⍺⍺ x)⍺⍺ y)⍺⍺ z)
⍝   so can be calculated in a single left to right sweep
⍝ Phil Last ⍝ 2008-03-04 15:03
 }
