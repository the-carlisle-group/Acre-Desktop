 nr←{
     ⍺←⍵
     6::⍺{⍵:⍺}1∊(2 4⍴' ⊢∧   ')⍷↑⎕DM
     ⊢⍺⍺ ⍵
⍝ no result
⍝ ⍺  the default result required from ⍺⍺ if none - ⍵ if not supplied
⍝ ⍺⍺ any function - if dyadic bind its left arg as - larg∘fn
⍝ ⍵  any array
⍝ ←  result of (⍺⍺ ⍵) or (⍺) if none or (⍵) if none
⍝ Phil Last ⍝ 2008-03-06 12:30
 }
