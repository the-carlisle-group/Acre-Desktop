 rm←{
     ⍺{1↓⊃,/⍵{(¯1↓' ',(⍴⍵)⍴1↓⍺),¨⍵}(⊃⍵){⍺{(⍴⍺)↓¨⍵⊂⍨⍺⍷⍵}⍺,⍵}⍺},¨⍵
⍝ replace multiple
⍝ ⍺ text string with placeholders
⍝ ⍵ list of strings first of which is placeholder the rest being strings
⍝   to replace each placeholder, re-used cyclically if insufficient.
⍝ ← amended string
⍝   If 2=⍴⍵ this is equivalent to: ⍺ re ⍵
⍝ Phil Last ⍝ 2008-06-09 23:58
 }
