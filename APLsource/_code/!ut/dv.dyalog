 dv←{⍺←⊢
     ⍕{
         ⊃,/{
             0=≡⍵:⍵
             0∊⍴⍵:((''⍬ ⍵)⍳⊂⍵)⊃'''''' '⍬'⍵
             1=≡⍵:'(',,∘')'⊃,/,⍵
             ⊃,/'(',,∘')'∇¨⍵
         }⍵
     }⎕CR(f←⍺⍺)/'f'
⍝ ⍺⍺    derv
⍝ ←     executable text-string representation of ⍺⍺
⍝ sometimes adds too many parens but would need MUCH more analysis not to
 }
