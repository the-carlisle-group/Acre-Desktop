 ec←{
     ⍺←cr'' ⋄ e←'\'
     ⍵(⍺{⍵∘/¨⍺{⍺ ⍵}(⍺∊⍺⍺)∧¯1⌽⍵})~(⍵=e)∧(¯1⌽⍵≠e)∧(1⌽⍵∊⍺,e)
⍝ escape
⍝ ⍺ control chars
⍝ ⍵ string
⍝ ← (amended string)(control flags)
⍝ where:
⍝   amended string has actioned escape chars '\' removed
⍝   control flags is boolean length of amended string
⍝       with 1 where amended string is unescaped control
⍝ Phil Last ⍝ 2009-02-06 08:51
 }
