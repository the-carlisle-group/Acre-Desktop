 ei←{
     ⍺←⊢
     (1=≡⍵):⍺ ⍺⍺ ⍵
     ⍺ ⍺⍺¨⍵
⍝ each if not simple
⍝ ⍺ ?
⍝ ⍵ ?
⍝ ⍺⍺ function to run on simple ⍵
⍝ ← [⍺]⍺⍺ ⍵ or [⍺]⍺⍺¨⍵ but not recursively
 }
