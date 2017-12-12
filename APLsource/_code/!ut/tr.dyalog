 tr←{
     {(+/∧\' '=⍵)↓⍵}∘⌽⍣2⊢⍵
     ⍵/⍨{(∨\⍵)∧⌽∨\⌽⍵}⍵≠' '
⍝ trim leading and trailing blanks
 }
