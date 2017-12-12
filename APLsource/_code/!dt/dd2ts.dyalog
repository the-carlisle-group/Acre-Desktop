 dd2ts←{
     dhm←24 60 60 1000
     (s2d⌊⍵),⍉dhm⊤⍉⌊0.5+(1|⍵)××/dhm
⍝ ⍵ days.decs ddddd.dddddd            - shape any
⍝ ← timestamp yyyy mm dd hh mm ss mmm - shape (⍴⍵),7
⍝ try (dt2fm∘ts2dt∘dd2ts)(24÷⍨6+2.2×1○2×○(92⌽⍳366)÷366)+(39436+⍳366)
⍝ Phil Last ⍝ 2008-02-11 08:38
 }
