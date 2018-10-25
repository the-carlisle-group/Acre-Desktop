 se←{
     fac←∇{⍵≤9:2 ⋄ ⍺⍺⌈⍵*÷2}⍵
     res←~⍵↑1 1
     res/⍳⍵⊣⍵{
         ⊢res[⍵×⍵↓⍳⌈⍺÷⍵]←0
     }¨fac
⍝ sieve of Eratosthenes
⍝ was ...
     n←24 60 60 1000
     td←{(#.DateToIDN 3⍴⍵)+(n⊥3↓⍵)÷×/n}
     dt←{(3⍴#.IDNToDate⌊⍵),⌊n⊤(1|⍵)××/n}
     (dt(td ⎕TS)-(⌈/⎕AI)÷×/n)((0,n)⊤⌈/⎕AI)
⍝ session start & duration
⍝ ⍵ null
⍝ ← start: y m d h m s m, duration: d h m s m
⍝ Phil Last ⍝ 2008-02-04 18:13
 }
