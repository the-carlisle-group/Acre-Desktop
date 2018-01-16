 al←{
     ⍺←2 ⋄ on off←⍺
     len←⊃⍴/⍴txt←⎕FMT↑⍵                ⍝ this
     code rem←⊂[1+⍳2](∨\(txt⍷⍨on 1/' ⍝')>≠\txt='''')⊖↑txt' ' ⍝ not this
     (msk/len)←{0⌈⌈/+/∨\⌽' '∨.≠⍵}code⌿⍨msk←rem∨.≠' '
     rem←⊃,/(off⍴' '),⊂rem⌽⍨+/∧\rem=' '     ⍝ this
     {⍵/⍨⌽∨\⌽' '∨.≠⍵}↑(len↑¨↓code),¨↓rem
⍝ align
⍝ ⍺ on off - (minimum blanks to adjust),(minimum offset for alignment)
⍝ ⍵ text array - presumed to be a ⎕cr
⍝ ← (⍵) with aligned comments
⍝ Phil Last ⍝ 2008-09-10 08:26
 }
