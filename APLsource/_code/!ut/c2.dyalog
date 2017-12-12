 c2←{
     c2←{
         ¯1↓¨2⍴⊃{
             l r m←⍵
             ((⍴m)<x←1+m⍳⍺):(l,1)(r,0)m
             (l,1↑⍨-x)(r,x⍴1)(x↓m)
         }/(⊂¨⌽⍺,⊂⍺ ⍵),⊂⍬ ⍬(⍵,⊂⍺ ⍵)
     }
     ⍺←⊢
     ⊃{(⍺ c2 ⍵){⍺ ⍵⊃⍨(⍴⊃⍺)>⍴⊃⍵}⌽(⍵ c2 ⍺)}/⍺ ⍵
⍝ compare two lists
⍝ ⍺ list presumed to be related to ⍵
⍝ ⍵ list presumed to be related to ⍺
⍝ [monad: ⍵ is two lists]
⍝ ← two expansion lists to accomodate mis-matches
⍝ Phil Last ⍝ 2008-07-17 21:28
 }
