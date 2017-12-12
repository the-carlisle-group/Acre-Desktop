 wl←{
     ⍵⍵ ⍵:∇ ⍺⍺ ⍵
     ⍵
     ⍺⍺⍣(⊢∘~∘⍵⍵⍨)⍣(⍵⍵ ⍵)⊢⍵
     ⍺⍺⍣(⍵⍵{~⍺⍺ ⍺})⍣(⍵⍵ ⍵)⊢⍵
     ⊢∘∇∘⍺⍺/(1∩⍵⍵ ⍵),⊂⍵
⍝ while
⍝ ⍺⍺ fn to run repeatedly while
⍝ ⍵⍵ test on ⍵ is true
⍝ ←  ⍵ or ⍺⍺ ⍵ or ⍺⍺ ⍺⍺ ... ⍵
 }
