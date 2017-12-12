 excRep←{
     ⍺←⊢
     ⊃{⍺,' - ',⍵}/⍺ ⍵
⍝ ⍺ 'message text'
⍝ ⍵ 'item.name'
⍝ ← '* message text - item.name'
⍝ or
⍝ ⍺ missing
⍝ ⍵ 'msg text' 'more' 'more ...'
⍝ ← 'msg text - more - more ...'
⍝ Phil Last ⍝ 2008-01-29 10:29
 }
