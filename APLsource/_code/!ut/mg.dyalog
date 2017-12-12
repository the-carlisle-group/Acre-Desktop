 mg←{
     {W}W[⍺⍺⊣⍳⍴W←⍵]←⍺
⍝ merge
⍝ ⍺  source data
⍝ ⍺⍺ a function to select from index array of (⍵) - (⍳⍴⍵)
⍝    or an array being a prior selection of those indices
⍝ ⍵  target array
⍝ ←  (⍵) with data from (⍺) merged at positions specified by (⍺⍺)
⍝    {W}W[⍺⍺⊣{⊂⍬}⍣(0∊⍴⍴⍵)⍳⍴W←⍵]←⍺ ⍝ would permit scalar ⍵
⍝ Phil Last ⍝ 2008-01-23 11:06
 }
