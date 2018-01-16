 rd←{
     ⊃(⌊0.5+⍵×⍺÷+/⍵){⍺⍺+⍵{(×⍵)×(⍳⍴⍺)∊(⍒|⍺)⍴⍨|⍵}⍺-+/⍺⍺}/⍺ ⍵
⍝ redistribute
⍝ ⍺ new scalar integer total
⍝ ⍵ simple integer list
⍝ ← list with length as (⍵), total as (⍺) and relative proportions similar
⍝   to (⍵). Recalculate proportionally; round to integer; redistribute
⍝   total error (e) as +/-1 for each of the (e) absolute largest items.
 }
