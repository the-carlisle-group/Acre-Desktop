 editStore←{⍺←⊢
     1≡⍺ 1:{⍵⊣⍵.(n v)←⊂,0}⍵           ⍝ monad - set store
     cat←⍺                            ⍝ dyad - ⍺ is store
     name←⊃nv←⊂if≡⍵
     new←0≡cat.{((⍴n)|n⍳⍵)⊃n}⊂name    ⍝ missing
     new:⊢cat.(n v),←⊂¨nv             ⍝ add
     value←cat.{(n⍳⍵)⊃v}⊂name         ⍝ retrieve
     value⊣cat.(n v)/⍨←⊂~cat.n∊⊂name  ⍝ remove
⍝ maintain dictionary of names values for editFix
⍝ Phil Last 2015-05-07
 }
