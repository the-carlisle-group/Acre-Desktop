 cm←{
     ↑⍵⍴¨⍨↓1+⌽↑-1-⌽∘⍴¨⍵
⍝ conform (mix)
⍝ ⍵ any array
⍝ ← mix a simple array
⍝   mix a uniformly nested array
⍝   otherwise uplift all items to the maximum rank and mix
⍝   primitive in 14.0
 }
