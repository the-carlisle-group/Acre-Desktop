 cf←{⍺←⊢
     {11::⌊/⍳0 ⋄ ÷/⍵}1(⊢∘(⍺∘⍺⍺)∘⍵){
         ⊃∇/⍺{
             (1000<+/⍵)↓(2×⍺)⍵
         }(⍬⍴2↓⎕AI-(⊢∘⍺⍺/⍳1+⍺)⊢⎕AI)(⍬⍴2↓⎕AI-(⊢∘⍵⍵/⍳1+⍺)⊢⎕AI)
     }(⊢∘(⍺∘⍵⍵)∘⍵)1
⍝ compare
⍝ a f cf g w ←→ (a f time w) ÷ a g time w
⍝   f cf g w ←→ (  f time w) ÷   g time w
⍝ Phil Last ⍝ 2007-06-23 20:07
 }
