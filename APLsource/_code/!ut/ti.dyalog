 ti←{⍺←⊢
     op←{⍺←⊢
         0.001×÷/2⍴⌽1⊢∘(⊢∘(⍺∘⍺⍺)∘⍵){⍺,⊃∇/⍺{(1000<⍵)↓(2×⍺)⍵}⍺⍺{⍬⍴2↓⎕AI-(⍺⍺/⍳1+⍵)⊢⎕AI}⍺}1
     }
     (⍺ ⍺⍺ op ⍵)-⍺⊢op ⍵
⍝ time function
⍝ ⍺ larg to ⍺⍺
⍝ ⍺⍺ fn to be timed
⍝ ⍵ rarg to ⍺⍺
⍝ ← seconds per execution averaged over at least one second
⍝ Phil Last ⍝ 2007-12-21 17:01
 }
