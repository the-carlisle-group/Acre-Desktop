 en←{
     ((1+⌊⍺⍟1⌈⌈/|⍵)⍴⍺)⊤⍵
⍝ encode
⍝ ⍺ base
⍝ ⍵ numeric
⍝ ← ⍵ encoded to base ⍺ with sufficient digits
⍝ 2 1/2 times quicker than ⊥⍣¯1
⍝ Phil Last ⍝ 2008-03-11 18:10
 }
