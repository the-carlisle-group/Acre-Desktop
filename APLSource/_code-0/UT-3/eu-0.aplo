 eu←{
     (⊂u⍳⍵)⌷⊢∘⍺⍺/0,⍪u←∪⍵
     (⊂u⍳⍵)⌷⍺⍺¨u←∪⍵
     ⍵ ⍺⍺¨{(⊂⍵⍳⍺)⌷⍺⍺ ⍵}∪⍵
⍝ each unique
⍝ ⍺⍺ fn to run on each item of ⍵
⍝ ⍵ vector
⍝ ← equivalent of ⍺⍺¨⍵ ⍝ ***
⍝   but having run ⍺⍺ on only a single
⍝   instance of each unique value of ⍵
⍝   *** and not at all if none.
⍝ a fixed left arg can be composed with ⍺⍺ as in:
⍝ larg∘fn eu rarg
⍝ Phil Last 2016-10-24
 }
