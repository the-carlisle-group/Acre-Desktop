 nm←{
     ⍺←#
     ,∘⍵⍣⍺.{0=⎕NC ⍺}''
⍝ new name
⍝ ⍺ space
⍝ ⍵ scalar char
⍝ ← new name undefined in space
⍝ Phil Last ⍝ 2009-02-14 18:28
 }
