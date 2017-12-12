 po←{
     ⍺←≡
     (⍺⍺⍣⍺)⍵
⍝ hence is how to do it without ⍣
     ⍺←⊢
     1≢⍺ 1:⊃⊢∘⍺⍺/(⍳⍺),⊂⍵                  ⍝ ⍺ is iterations
     ⍵ ⍺⍺{⍺≡⍵:⍵ ⋄ ⍵ ⍺⍺ ∇∇ ⍺⍺ ⍵ ⋄ ⍵:⍵≡⍺}⍺⍺ ⍵ ⍝ 'til no change
⍝ power
⍝ Phil Last ⍝ 2008-01-07 09:18
 }
