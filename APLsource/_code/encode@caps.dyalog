 encodeCaps←{
     s←+\c←⍵='.'             ⍝ c ←→ where dots | s ←→ partitions
     b←⊃=/m n←1 0(819⌶)¨⊂⍵   ⍝ b ←→ non-alpha '0-9', '_∆'...
     u d←b b<m n=⍵ ⍵         ⍝ u d ←→ where maj and min
     u←u>a←c<(s∊u/s)>s∊d/s   ⍝ u ←→ maj in node with min
     a←a>¯1↓0,a              ⍝ a ←→ node with maj and no min
     u←'-@'[u]
     a←'-!'[a]
     ~∘'-',a,u,⍪n
⍝ ⍵ simple - can be '#.one#.two.three#.four#.five.six'
⍝   prefix sub-names with "!" where some caps and no small
⍝   prefix single caps with "@" in sub-names where some small
⍝   convert all to small
⍝ ← ⍵ small letters with escape chars
⍝ inv → decodeCaps
⍝ Phil Last 2017-11-08 15.03
 }
