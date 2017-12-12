 ix←{
     w←⍵
     i←⍺⍺⊣⍳⍴w
     ⍺←⊢
     1≡⍺ 1:w[i]
     {w}w[i]←⍺

⍝ ⍺  source data if it is to be replaced
⍝ ⍺⍺ array of ⍵-indices whence result to be drawn or function to generate such
⍝    or
⍝    array of ⍵-indices whither ⍺ to be assigned or function to generate such
⍝ ⍵  target array
⍝ ←  monad: subarray of ⍵ selected by ⍺⍺⊣⍵
⍝    dyad:  ⍵ with items selected by ⍺⍺⊣⍵ replaced by ⍺
 }
