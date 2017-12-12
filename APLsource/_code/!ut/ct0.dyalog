 ct0←{
     q←''''∘{⍺,⍺,⍨⍵/⍨1+⍵=⍺}
     if←{⍺⍺⍣(⍵⍵⊣⍵)⊢⍵}
     v←⍎n←⍵
     (⊂⍕n'←⍬'),(↓⍕(⊂n,',←'),q if(≡∘⍕⍨)¨v),⊂⍕n'⍴⍨←'(⍴v)
⍝ create table -
⍝ ⍵     fully-qualified name of array
⍝ array mixed array (depth +/-2) of scalar numerics and text scalars or strings
⍝ ← executable expressions to reconstitute array
 }
