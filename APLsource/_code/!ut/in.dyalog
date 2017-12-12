 in←{
     ≥/⍺:⍵                ⍝ no-op
     (¯1=-/⍺):⍵⍵⊣⍵     ⍝ n-1 of n
     (⍺≡0 2):⍺⍺⊣⍵      ⍝ 0 of 2
     (⍺-0 1)⍺⍺ ⍵          ⍝ penultimate?
⍝ index list of functions or arrays
⍝ i n(f in g in h ... n)⍵
⍝ ⍺  index length
⍝ ⍺⍺ function/array list
⍝ ⍵⍵ function or array
⍝ ⍵  arg to functions
⍝ ←  result of selected function/array
⍝ Phil Last ⍝ 2007-12-23 13:51
 }
