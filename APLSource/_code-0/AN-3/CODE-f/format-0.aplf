 format←{⍺←⊢ ⋄ dpt←⍺⊣1 ⋄ dta←⍵
     SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     and←{⍺⍺⊣⍵:⍵⍵ ⍵ ⋄ 0}
     l←(1=≢∘⍴)and(4<≢)and(2=≡)and(∧/(''≡0∘/)¨)dta
     n←(paren SV.RV,⊢)⍣l encode⍪⍣l⊢dta
     q←quoted n
     d←q<n∊SV.(CS,RB)
     x←{⍵/¨⍨SV.RB=⍵}d/n
     b←-⌿+\q<⍤1⊢SV.(LB,RB)∘.=n
     r←⊃,/(x,¨⍨SV.CR↑¨⍨1+SV.IN×d/b)⊣am(d∘/)⊢n
     dpt=2:(1↓¨⊢⊂⍨⊢=⊃)SV.CR,r
     r
⍝ ⍺
⍝   1: as CR separated string (dflt)
⍝   2: as list of strings
⍝ ⍵ APL array
⍝ ← pretty Array Notation encoding of ⍵
⍝   see amend, encode, decode, SV
⍝ relies on redundant diamond encoded after left bracket
⍝ Phil Last 2015-12-12
 }
