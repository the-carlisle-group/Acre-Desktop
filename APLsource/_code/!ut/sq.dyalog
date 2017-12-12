 sq←{
     ⍺←1
     cols←1⌈⌊0.5+{(⌈(⍺×⍵)*÷2)÷⍵}/⍺ 1×2 1×⍴⍵
     ↑,/⍉cols rows⍴(cols×rows←⌈(⍬⍴⍴⍵)÷cols)↑↓⍵
⍝ square
⍝ reshape text column to nearest ⍺ rectangular display
⍝ default square (1) - 2 gives 2×width
 }
