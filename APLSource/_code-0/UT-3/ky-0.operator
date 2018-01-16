 ky←{⍺←⊢
     0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍵≡⍺ ⍵:⍵ ∇⍳⍬⍴⍴⍵
     u←∪i←⍳⍨⊂[1↓⍳⍴⍴k]⊢k←⍺
     f←⍺⍺
     ↑u{(⍺⌷k)f ⍵}¨(↓u∘.=i)⌿¨⊂⍵

⍝ key
⍝ ⍺ ⍺⍺ ky ⍵
⍝   ⍺⍺ ky ⍵ ←→ ⍵ ⍺⍺ ky ⍳⍬⍴⍴ ⍵
⍝ d: (⍬⍴⍴⍺)←→(⍬⍴⍴⍵)
⍝   ⍺ keys array (major cells)
⍝   ⍵ corresponding data array (in first dimension)
⍝   ⍺⍺ dyad applied between each unique key and the
⍝       corresponding major cells of the data as - key ⍺⍺ cells
⍝ m:
⍝   ⍺⍺ applied beteen each unique major cell of ⍵ and the corresponding
⍝       subset of ⍳⍬⍴⍴⍵
⍝ ← assembled result of applications of ⍺⍺
⍝ Phil Last ⍝ 2008-05-29 10:39
 }
