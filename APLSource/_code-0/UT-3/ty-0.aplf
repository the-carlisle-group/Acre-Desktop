 ty←{
     ⍺←0
     ⍺{
         (dim pw)←2⍴⍺,(⍴,⍺)↓0,⎕PW
         sw←dim≠0
         len wid←⍴⍵
         cols←1⌈⌊|pw÷wid+2
         rows←⌈len÷cols
         len←cols×rows
         (⍒sw×⍳2)⍉(sw⌽rows cols)⍴↓len wid↑⍵
     }↑,↓↑⍵
⍝ tidy
⍝ ⍵ 2d or nested list - names - whatever
⍝ ← 2d text in columns
⍝ Phil Last ⍝ 2008-03-02 19:21
 }
