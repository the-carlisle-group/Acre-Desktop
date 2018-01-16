 tl←{
     s←⍴⍵                    ⍝ shape
     k←≢s                    ⍝ rank
     c←1+(-k)↑¯1+⍺           ⍝ cell
     ⊃{s k c←⍺               ⍝ per dim
         ↑(s⍴c↑1)∘(⊂[k])¨⍵   ⍝ partition
     }/(⌽↓s,(⍳k),⍪c),⊂⊂⍵     ⍝ fold left
⍝ tessellate
⍝ ⍺ shape of sub arrays
⍝ ⍵ multi-d array
⍝ ← nested array of ⍺ shaped subarrays of ⍵
⍝   if ⍺ is shorter than rank ⍵ it is padded at left with ones.
⍝   if any ⍺ is not a factor of the corresponding item of ⍴⍵,
⍝       trailing cells are truncated.
 }
