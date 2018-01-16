 fk←{⍺←⊢
     (m d)←'monadic left fork' 'dyadic left fork'
     m≡⍺ m:m ⍺⍺ ⍵(⍵⍵ ⍵)
     ⍺≡m:(⍺⍺ 0⊃⍵)⍵⍵ 1⊃⍵
     ⍺≡d:(⊃⍺⍺/0⊃⍵)⍵⍵ 1⊃⍵
     d ⍺⍺(⍺ ⍵)(⍺ ⍵⍵ ⍵)
⍝ fork
⍝   f fk g fk h ⍵ ←→ (  f ⍵)g(  h ⍵)
⍝ ⍺ f fk g fk h ⍵ ←→ (⍺ f ⍵)g(⍺ h ⍵)
⍝ applies g between the results of f and h having
⍝   applied each to ⍵ or between ⍺ and ⍵
⍝ Phil Last ⍝ 2007-06-23 18:47
 }
