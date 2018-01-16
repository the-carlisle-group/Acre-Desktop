 rk←{
     mlr←⌽3⍴⌽⍵⍵,⍬
     m←(f←⍺⍺)/0
     ⍺←m←(f←⊢∘⍺⍺)/1
     l r←-1↓r⌊|l+r×0>l←(mlr⌊r←3⍴(⍴⍴⍵),⍴⍴⍺)[⍒m×⍳3]
     5::⎕SIGNAL/⌽⎕EN,⎕DM
     {↑⍵⍴¨⍨↓1+⌽↑-1-⌽∘⍴¨⍵}(⊂[l↑⍳⍴⍴⍺]⍺)f¨⊂[r↑⍳⍴⍴⍵]⍵
⍝ rank
⍝   f rk{m l r}
⍝ applies f to m-cells of ⍵ or between l-cells of ⍺ and r-cells of ⍵
⍝ Phil Last ⍝ 2007-06-22 22:57
 }
