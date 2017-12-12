 fp←{⍺←⊢
     c←'R:' 'D:' 'U:' 'E:' 'Z:' 'L:'
     k←'ER' 'DC' 'UC' 'ED' 'DL' 'LL'
     ⍺ re fl↓⌽c,⍪⊂¨k
     def ⎕PFKEY ⍵
⍝ ⍺ def - string wherein 'R:' 'D:' 'U:' 'E:'
⍝          replaced with 'ER' 'DC' 'UC' 'ED'
⍝ ⍵ key
⍝ ← new defn
⍝ Phil Last 2014-10-01 11:57
 }
