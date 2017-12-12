 rn←{⍺←⊢
     ⊃if(0∘=∘⍴∘⍴){⍵↑¨⍨{+/(⍵≠' ')∧2>+\'.'=⍵}↑⍵}⊂if≡⍵
⍝ ⍵ name(s)      '#.a.b.c.d' '#.x.y.z'
⍝ ← rootname(s)  '#.a' '#.x'
⍝ depth 1 or 2
 }
