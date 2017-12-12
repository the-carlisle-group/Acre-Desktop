 ea←{
     f←⍺⍺
     ⍺←(f←⊢∘⍺⍺)/0
     f⌿⍺,[-0.1]⍵
⍝ each
⍝ [⍺] ⍵-conformable array
⍝ ⍵   array
⍝ ⍺⍺  function to apply to each item of ⍵ or
⍝     between corresponding items of ⍺ and ⍵
⍝     but no spurious application to empties
 }
