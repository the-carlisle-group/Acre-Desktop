 nv←{⍺←⊢
     ⍵.(⍺⍺{⍵,⍪⍺⍺¨1↓⍎¨'0',⍵}⍺∩⍨⎕NL-2.1)
⍝ namespace vars - all or those mentioned in ⍺ if supplied
⍝ ⍵  space
⍝ ←  2-col table - names values
⍝                  ...
⍝ ⍺⍺ function to run on each value
⍝      ⍴nv dx'oneVec twoD scalar'((⍳1)(⍳2 3)('A'))
⍝ oneVec  1
⍝ scalar
⍝ twoD    2 3
 }
