 co←{
     ⊃⍵{(⊂⍵⍳⍺⍺)⌷(1+⍴⍵)↑⍺}/⍺
⍝ corresponding
⍝     A B co C ←→ A where B corresponds to C
⍝ ⍺   A B
⍝ A   vector
⍝ B   vector conforming [0] with A
⍝ ⍵   C
⍝ C   array of members [1] of B
⍝ ←   if A ←→ f¨ B then f¨ C
⍝     (⊂B⍳C)⌷(1+⍴B)↑A
⍝     shape of ⍵
⍝ [0] A[⍴B] may be preferred alternative prototype
⍝ [1] for C not in B return prototype of A but see [0]
⍝ Phil Last 2016-10-27
 }
