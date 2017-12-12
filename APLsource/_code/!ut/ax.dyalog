 ax←{⍺←⊢
     mon←1≡⍺ 1
     rx←mon⊃2⌽(mx lx rx)←,¨⌽3⍴⌽⍵⍵
     pre←{k←⍴⍴⍺
         ×⍴f←⍵~⌊⍵:(⍺⍴⍨1+(¯1+⍴⍺)\⍨~(⍳k+⍴f)∊⌈f)∇⌈⍵++/⍵∘.>f
         (×⍵)≡,¯1:⍺ ∇(⍳k)~|⍵
         t←⍋⍒(⌽⍵)⍳⍳k
         ⍺ t
     }
     post←{(⍋⍋(⍴⍴⍵)↑1+⍋⍺)⍉⍵}
     (ra rt)←⍵ pre rx
     mon:rt post ⍺⍺⍤(⍴rx)⊢rt⍉ra
     (la lt)←⍺ pre lx
     (la ra)←lt rt⍉¨la ra
     (lc rc)←⊃∘⍴¨lx rx
     (lr rr)←⊃∘⍴∘⍴¨la ra
     r←la ⍺⍺⍤lc rc⊢ra
     t←(⍳∘(⌈/)⍨lr rr)⊃lt rt
     t post r
⍝ axis
⍝ ⍺  optional left arg
⍝ ⍺⍺ function to apply
⍝ ⍵⍵ axes treated as ⌽3⍴⌽⍵⍵
⍝ ⍵  right arg
⍝ Each item of ⍵⍵ can be a scalar or vector of zero or more
⍝   elements. A negative scalar n represents (⍳⍴⍴arg) ~ |n.
⍝   A fractional axis f inserts a new unit dimension between
⍝   ⌊f and ⌈f in the argument's shape.
⍝ Arguments ⍺ & ⍵ are transposed to bring specified axes
⍝   within the scope of the rank operator where they define
⍝   the cells to which function ⍺⍺ will be applied.
⍝ The result is transposed in an attempt to replace the axes
⍝   in the positions they occuplied in the original argument
⍝   of the higher rank.
 }
