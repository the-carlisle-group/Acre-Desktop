 ad←{⍺←⊢
     d←1≢⍺ 1                ⍝ dyadic?
     (|≡⍺ ⍵)>d+|⍵⍵⊣⍵:⍺ ∇¨⍵  ⍝ if dyad, juxtaposition of ⍺ ⍵ adds 1 to |≡
     ⍺ ⍺⍺ ⍵
⍝ at depth
⍝ ⍺ [array]
⍝ ⍵ array
⍝ ⍺⍺ function to run at ...
⍝ ⍵⍵ depth or {depth}
⍝ ← ⍺ ⍺⍺ ⍵ or ⍺(⍺⍺ ad ⍵⍵)¨⍵ if arg(s) too deeply nested
⍝ Phil Last ⍝ 2008-07-04 09:14
 }
