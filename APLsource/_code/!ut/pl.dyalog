 pl←{
     0∊∊⍺:(⍕⍺),(⍺≠1)⊃~∘∊⍨{⍵⊂⍨⍵=⊃⍵}' ',⍵
     (1⌽(⍵≠1)⊃~∘∊⍨{⍵⊂⍨⍵=⊃⍵}' ',⍺),⍕⍵
⍝ plural
⍝ ⍺  number          | ⍺  'this these'
⍝ ⍵  'thing things'  | ⍵  number
⍝ ←  1 thing         | ←  this 1
⍝    n things        |    these n
 }
