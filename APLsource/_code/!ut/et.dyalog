 et←{ ⍝ and
     ⍺⍺⊣⍵:⍵⍵ ⍵ ⋄ 0
⍝ f0 et f1 et f2 et ... ⍵
⍝ ⍵ any array in domain of f0
⍝   f0 f1 f2 &c. are monadic tests on ⍵, but each subsequent
⍝   test will only run if its predecessor returns true.
⍝ ← 1 | 0 - whether or not all are true
⍝   see ou
 }
