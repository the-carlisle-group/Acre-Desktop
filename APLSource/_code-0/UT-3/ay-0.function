 ay←{⍺←⊢
     drop←{⍵/⍨∨\' '∨.≠⍵}
     p3←({⍵⊣⍵.⎕ML←3}⎕NS'').⊂
     words←{(' '≠⍵)p3 ⍵}
     ctl←⊣/src←drop(0,⍴,⍵)↓⍵{⍵⌿⍨>/⍺⍷⍵}⎕CR 1⊃⎕XSI
     dat←{(+/∨\' '≠⌽⍵)↑¨↓⍵}drop 0 1↓src⌿⍨ctl←ctl=type←⊃ctl~' '
     ctl/⍨←(∨\ctl)∧⌽∨\⌽ctl
     (ctl dat)←⊃{d←⍺ p3 ⍺\⍵
         c←{⍵/⍨~0 1⍷⍵}⍺/⍨~1 1⍷⍺
         ⊃∘(∇/)⍣(0∊c)⊢c d
     }/ctl dat
     type='d':dat                         ⍝ text depth vs rank
     dat←{⍵⍴⍨(⍴⍵)↓⍨+/∧\1=⍴⍵}↑⍣(≡dat)⊢dat  ⍝ convert depth to rank
     type='t':dat                         ⍝ text
     type='n':↑1∘⊃∘⎕VFI¨↓dat              ⍝ numeric
     type='x':mx(⍺⊣#).⍎¨↓dat              ⍝ executable
     type='w':~∘' '¨↑words¨↓dat           ⍝ words
     type='m':⊃(~∘' '¨↑words¨↓dat){(⍴⍺)⍴⍺⊖↑⍺⍺ ⍵}/⊂rk ¯1↑⍉↑⍉⎕VFI¨↓dat
     1:dat                                ⍝ ↑ mixed words and numbers
⍝ ⍺  space (dflt #) in which 'x' type source expressions are executed
⍝ ⍵  substring to identify source rows to use in caller.
⍝    source rows not preceded by first type char are rank indicators -
⍝    - as inserted blank rows in default output.
⍝ ←  array represented by selected source rows in caller.
 }
