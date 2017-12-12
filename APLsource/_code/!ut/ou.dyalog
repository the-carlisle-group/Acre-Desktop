 ou←{ ⍝ or
     ⍺⍺⊣⍵:1 ⋄ ⍵⍵ ⍵
⍝ f0 ou f1 ou f2 ou ... ⍵
⍝ ⍵ any array in domain of f0
⍝   f0 f1 f2 &c. are monadic tests on ⍵, but each subsequent
⍝   test will only run if its predecessor returns false.
⍝ ← 1 | 0 - whether or not any is true
⍝   see et
 }
