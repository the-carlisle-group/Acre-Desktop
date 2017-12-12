 tf←{
     ⍺←⊢
     (1=⍺⊣0):⍺⍺⊣⍵ ⍝ antecedent
     (0=⍺⊣1):⍵⍵⊣⍵ ⍝ consequent
     (1 ⍺⍺ ⍵):0 ⍺⍺ ⍵    ⍝ antecedent then consequent
     ⍵⍵⊣⍵            ⍝ else alternative
⍝ true false
⍝   antecedent tf consequent tf alternative
⍝ applies antecedent followed by consequent or alternative to ⍵
⍝   antecedent, consequent and alternative are arrays or monads
⍝ Phil Last ⍝ 2008-01-22 07:53
 }
