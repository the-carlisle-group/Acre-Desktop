 rp←{
     ⍵↓⍨(≢⍺)×⍺≡(≢⍺)⍴⍵
⍝ remove prefix ⍺ from ⍵
⍝ 'ABC' rp ⎕A → 'DEFGHIJKLMNOPQRSTUVWXYZ'
⍝ 'abc' rp ⎕A → 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
 }
