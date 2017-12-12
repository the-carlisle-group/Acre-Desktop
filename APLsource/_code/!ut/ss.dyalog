 ss←{
     (⍴,⍵)↑1↓⌽⊃⍺⍺{⍬⍴⍵:⍵ ⋄ ⍺⍺ ⍺:1,⍵ ⋄ 0,⍵}/⌽0,⍵
⍝ stop scan
⍝    <\⍺⍺¨⍵ but ⍺⍺ runs only until a one is encountered
⍝ ⍺⍺ a potentially expensive boolean returning function
⍝ ⍵  a vector whose items are all valid arguments to ⍺⍺
⍝ ←  boolean vector length of ⍵ having one or zero ones
 }
