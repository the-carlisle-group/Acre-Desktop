 prepare←{⍺←⊢
     arg←{
         dec←{(,⍵)/⍨,∧\(quoted∨'⍝'≠⊢)⍵}
         SV.CR∊⍵:⊃,/dec¨{⍵⊂⍨⍵=⊃⍵}SV.CR,⍵  ⍝ CR separated string
         2=|≡⍵:⊃,/SV.CS,¨dec¨⍵            ⍝ list of strings
         1=⍴⍴⍵:dec ⍵                      ⍝ ⋄ separated string
         2=⍴⍴⍵:dec SV.CS,⍵                ⍝ 2-D
     }⍵
     res←expand SV.CS am(((SV.CR∘=>quoted)arg)∘/)⊢arg ⍝ replace CRs
     res⊣(((quoted<∊∘SV.UT)res)/res)←' '   ⍝ rem funny chars
⍝ expect CR separated string, text matrix or list of strings,
⍝ any of which can be commented; or diamond separated string
⍝ whose first comment terminates the encoding.
⍝ Phil Last 2017-05-23 08.53
 }
