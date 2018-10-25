 gc←{
     ⍺←#
     w←⍵
     (s r)←⍵
     c←{⊃⍵<∨/⍵}('\',cr'')∊s
     s←{⍵ re fl{⍵,∘⊂¨'\',¨⍵}~∘'\'cr''}if c,s
     (0∊⍴z←{⍵/⍨(⎕NC ⍵)∊3.1 3.2 4.1 4.2 9.4}⍺ fi s):z
     z⊣z ch¨⊂(⊃ec s)r
⍝ global change
⍝ ⍺ space - dflt #
⍝ ⍵ old new strings
⍝ ← nms changed
⍝ Phil Last ⍝ 2008-03-17 16:51
 }
