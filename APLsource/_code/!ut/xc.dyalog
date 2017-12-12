 xc←{⍺←⊢
     char←⍬⍴⍺⊣NB
     {⊢/(⍵=' ')⌽char,⍪⍵}⍵{(~⊃⍵)↓⍵\⍺}{(1+⍳⌈/⍵)∊⍵}+\1+{⍵>¯1↓0,⍵}⍵∊⎕A
⍝ expand camel case name
⍝ not before capital initial
⍝ not between multiple caps
⍝       xc'MrJJSmithLivedHere'
⍝ Mr JJSmith Lived Here
 }
