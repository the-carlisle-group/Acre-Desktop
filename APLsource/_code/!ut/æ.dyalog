 æ←{⍺←⍺
     s←'secundus'
     ⍺≢s:s ⍺⍺ ⍺(⍵⍵ ⍵)
     s d←⍵
     (⍺⍺ s)⍵⍵ d
⍝ a f æ g æ h w ←→ (f a)g(h w)
⍝               ←→ a ((f⊣) g ⊢∘h) w
⍝ first:  ⍺ ←→ a ⋄ ⍺⍺ ←→ f æ g ⋄ ⍵⍵ ←→ h ⋄ ⍵ ←→ w
⍝ second: ⍺ ←→ d ⋄ ⍺⍺ ←→ f      ⋄ ⍵⍵ ←→ g ⋄ ⍵ ←→ a(h w)
 }
