 sa←{
     b←=∘⍵⍣(0=≡⍺)⊢⍺
     1↓¨(1,b)⊂' ',⍵
⍝ split at
⍝ ⍺ scalar char or boolean length of ⍵
⍝ ⍵ string
⍝ ← ⍵ split at 1s in ⍺ or where ⍵=⍺
 }
