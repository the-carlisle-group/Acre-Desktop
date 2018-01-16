 dy←{⍺←⊢
     1≡⍺ 1:{⍵⊣⍵.(n v)←⊂,0}⎕NS''
     cat←⍺
     name←⊃nv←⊂if≡⍵
     new←0≡cat.{((⍴n)|n⍳⍵)⊃n}⊂name    ⍝ missing
     new:1⊃cat.(n v),←⊂¨nv            ⍝ add
     value←cat.{(n⍳⍵)⊃v}⊂name         ⍝ retrieve
     value⊣cat.(n v)/⍨←⊂~cat.n∊⊂name  ⍝ remove
⍝ maintain dictionary of names values "n" "v" with initial value ,0
⍝ monad:
⍝ ⍵ ?
⍝ ← empty store
⍝ dyad:
⍝ ⍺ store
⍝ ⍵ name value
⍝ ← if name not in store
⍝   value
⍝   if name already in store
⍝   value - and name is removed
⍝ Phil Last 2015-05-07
 }
