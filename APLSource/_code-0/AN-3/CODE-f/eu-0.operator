 eu←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     (⊂u⍳⍵)⌷⍺⍺¨u←∪,⍵
     ⍵ ⍺⍺¨{(⊂⍵⍳⍺)⌷⍺⍺ ⍵}∪⍵
⍝ each unique
⍝ ⍺⍺ fn to run on each item of ⍵
⍝ ⍵ array in domain of ⍺⍺¨
⍝ ← equivalent of ⍺⍺¨⍵
⍝   but having run ⍺⍺ on only a single
⍝   instance of each unique value of ⍵
⍝ Phil Last 2015-12-15
 }
