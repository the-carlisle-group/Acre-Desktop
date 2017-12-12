 pf←{⍺←⊢
     c←'R:' 'D:' 'U:' 'E:' 'Z:' 'L:' '8:'
     k←'ER' 'DC' 'UC' 'ED' 'DL' 'LL' 'F8'
     def←⍺ re fl↓c,⍪⊂¨k
     def ⎕PFKEY ⍵
⍝ ⍺ def - string wherein 'R:' 'D:' 'U:' 'E:'
⍝          replaced with 'ER' 'DC' 'UC' 'ED'
⍝ ⍵ key
⍝ ← new defn
⍝ Phil Last 2014-10-01 11:57
 }
