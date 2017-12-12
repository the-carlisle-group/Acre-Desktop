 decodeCaps←{
     {~∘'!@'⊢⌿⍵⊖⍨{(¯1⌽⍵='@')∨⍵{⍵∊⍵/⍨⍺='!'}+\⍵='.'}⊢⌿⍵}↑1 0(819⌶)¨⊂⍵
⍝ ⍵ escaped fqns as delimited string
⍝ ← ⍵ with capitalisation restored
⍝ #.this.!fully_qualified.@item@name → #.this.FULLY_QUALIFIED.ItemName
⍝   i.e. ensure all small
⍝   cap sub-names including "!"
⍝   cap single chars after "@"
⍝   remove all "!@"
⍝ inv → encodeCaps
⍝ Phil Last 2017-12-04 08.28
 }
