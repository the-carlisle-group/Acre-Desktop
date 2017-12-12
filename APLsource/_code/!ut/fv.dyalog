 fv←{
     0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍺←⊢
     m←⍵≡⍺ ⍵
     (W A)←↓⍵,[-0.1]⍺⊣0
     t←2=⍴W
     m∧t:(⍺⍺ 0⊃W)(⍵⍵ 1⊃W)
     m:(⍺⍺ ¯1↓W),⍵⍵¨⊢/W
     t:((0⊃A)⍺⍺ 0⊃W)((1⊃A)⍵⍵ 1⊃W)
     ((¯1↓A)⍺⍺ ¯1↓W),(⊢/A)⍵⍵¨⊢/W
⍝ function vector
⍝           f fv g fv h ... x y z ... ←→ (f x)(g y)(h z) ...
⍝ a b c ... f fv g fv h ... x y z ... ←→ (a f x)(b g y)(c h z) ...
⍝ a b c ... f fv g fv h ... ⊂x        ←→ (a f x)(b g x)(c h x) ...
⍝ (⊂a)      f fv g fv h ... x y z ... ←→ (a f x)(a g y)(a h z) ...
⍝ requires conformity of ⍺ or ⍵ with number of fns
⍝ permits scalar extension of ⍺ xor ⍵ in dyad only
⍝ Phil Last ⍝ 2007-06-29 00:00
 }
