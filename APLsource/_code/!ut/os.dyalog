 os←{
     f←({⍵⊣⍵.x←⍬}⎕NS'')∘{⍺.x⊣⍺.x{(⍺~⍵)∪⍵~⍺}←,⍵}
     f{⍵⊣⍵.(f←⍺⍺)/0}⎕NS''
⍝ one store
⍝ ⍵ ? ignored
⍝ ← ns containing function f
⍝ after which in ns.f ⍵
⍝   ⍵ array
⍝   ← contents of store after call being
⍝     items previously in store not in arg
⍝     and items in arg not previously in store
⍝ with the result that scalars in arg
⍝ are added to or removed from store.
⍝   ns.f ⍬   ←→ contents unchanged
⍝   ns.f⍣2⊢⍬ ←→ empty store
 }
