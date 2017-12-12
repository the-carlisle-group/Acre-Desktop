 gd←{⍺←⊢
     z←⎕FMT'-'⍪'|',(⍺⊣0){
         ⍺:⍉↑,/{⍵'-'}¨⍉⍵
         '-'⍪⍨⍵
     }↑,/{⍵'|'}¨⍵
     r←(∨/z='-')∧∧/z∊'|- '
     c←(∨⌿z='|')∧∧⌿z∊'|- '
     (r⌿z)←'-'
     (c/z)←'|'
     ((,r∘.∧c)/,z)←'+'
     z
⍝ grid
⍝ ⍺ 0 sep cols not rows
⍝   1 sep cols and rows
⍝ ⍵ array
⍝ ← boxed
 }
