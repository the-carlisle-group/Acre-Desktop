 re←{
     ⎕ML←0
   ⍝ ⊃⍺{(⍴,⍵)↓⊃,/⍵∘,¨(⍴,⍺)↓¨⍺{⍵⊂⍨⍺⍷⍵}⍺,⍺⍺}/⍵
     fi←{(⍴,⍺){⍵\⍺{⍵∊⊃⍺{⍵,⍺/⍨⍺≥⍺⍺+⌈/⍵}/⌽(-⍺),⍵}⍵/⍳⍴⍵}⍺⍷⍵} ⍝ no overlap
     ⊃⍺{(⍴,⍵)↓⊃,/⍵∘,¨(⍴,⍺)↓¨⍺{⍵⊂⍨⍺ fi ⍵}⍺,⍺⍺}/⍵
⍝ replace
⍝ string re old new
⍝ Phil Last ⍝ 2007-12-31 11:22
 }
