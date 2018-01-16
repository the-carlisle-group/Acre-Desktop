 mv←{
     x n←((⌈/⍺)⌈⌈/⍵),(⌊/⍺)⌊⌊/⍵
     (⍵[⍋⍵],x)[(0,+\(⍳1+x-n)∊⍵-n)[⍺-n]]
⍝ move
⍝ ⍺ integer vector
⍝ ⍵ integer vector
⍝ ← ⍺ with items not in ⍵ moved to next ⍵
⍝   {(⍵,⌈/⍺)[+/⍺∘.>⍵]}∘{⍵[⍋⍵]} can be
⍝   quicker for relatively small ⍵
 }
