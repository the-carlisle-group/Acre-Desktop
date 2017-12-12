 c3←{
     c3←{
         a b c←⍵
         xa xb←a c2 b
         xxa xc←(xa\a)c2 c
         (xxa\xa)(xxa\xb)(xc)
     }
     ⊃⍨∘(⍳∘(⌊/)⍨)∘(⊃∘⍴∘⊃¨)⍨⍵∘{⌽⍵⌽⌽c3 ⍵⌽⍺}¨⍳⍴⍵
⍝ compare three lists
⍝ ⍵ three lists presumed to be related
⍝ ← three expansion lists to accomodate mis-matches
⍝ Phil Last 2008-09-22 14:09
 }
