 ct←{
     q←''''∘{⍺,⍺,⍨⍵/⍨1+⍵=⍺}
     if←{⍺⍺⍣(⍵⍵⊣⍵)⊢⍵}
     (⍺,'←{')'⎕ml←0' 'r←⍬',(↓⍕(⊂'r,←⊂'),q if(≡∘⍕⍨)¨⍵),'↑r' ' }'
⍝ create createTable function
⍝ ⍺ name for function
⍝ ⍵ mixed matrix of scalar numerics and text scalars or strings
⍝ ← ⎕NR of function
 }
