 wi←{
     ⎕ML←0
     ⊃∧/(' ',⍺,' ')∘{∨/⍵⍷⍺}¨{⍵{(⍵/⍵>¯1↓0,⍵)⊂⍵/⍺}⍵≠'*'}{⍵{(⊃⍵)⌽⍺,⍨⍵/' '}2⍴¯1⌽'*'≠⍵}tr ⍵
⍝ wild
⍝ ⍺ text table
⍝ ⍵ wild card - one of - '*' 'pre*' '*mid*' 'pre*mid*' '*end' 'pre*end' '*mid*end' 'pre*mid*end'
⍝ ← boolean per row matches
⍝ Phil Last ⍝ 2008-01-07 09:19
 }
