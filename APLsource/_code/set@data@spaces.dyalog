 setDataSpaces←{
     ⎕THIS.dataSpaces←({⍵⊣⍵.ids←⍬}⎕NS'')∘{⊢⍺.ids←⍺.ids{(⍺~⍵)∪⍵~⍺}⍵}
     1:⍵
⍝ ←⍵ returned untouched
⍝ Runs once in new session.
⍝ Creates dataSpaces function that stores the spaces
⍝   in an anonymous space composed with the function.
 }
