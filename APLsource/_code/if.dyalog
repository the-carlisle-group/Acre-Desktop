 if←{
     1∊⍵⍵⊣⍵:⍺⍺⊣⍵
     ⍵
⍝ consequent if antecedent arg else arg
⍝ ⍺⍺    any array or monad on ⍵ to return such
⍝ ⍵⍵    boolean singleton or monad on ⍵ to return such
⍝ ⍵     array (in domain of either or both of monad ⍺⍺ & ⍵⍵)
⍝ ←     array ⍺⍺ or result of ⍺⍺ ⍵ or ⍵ unchanged
⍝ Phil Last ⍝ 2008-01-22 12:34
 }
