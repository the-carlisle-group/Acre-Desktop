 tk←{⍺←⊢
     ticks←⎕AI[2]'----+----|'{go ten←⍺ ⋄ prev←⍵
         now←⌊0.5+(⎕AI[2]-go)÷1000 ⋄ ⍞←prev↓now⍴ten
         ⍺ ∇ now⊣⎕DL 1}&0
     (⎕TKILL ticks)⊢⍺ ⍺⍺ ⍵
⍝ tick
⍝ run and return {⍺} ⍺⍺ ⍵ while displaying 1 second ticks
 }
