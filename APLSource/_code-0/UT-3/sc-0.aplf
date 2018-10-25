 sc←{
     ⍺←⊢
     sc←{⍺←⊢
         (0∊⍴r←⍺ fi ⍵):0 2⍴r
         r←r/⍨1=≡∘vr¨r
         {(+/∨\' '≠⌽⍵)↑⍵}¨↑{⍵⊂⍨{⍵∧2≥+\⍵}2</0,⍵≠' '
         }¨⊃,/'' '',(⊃ec ⍵)∘{⍵∘,¨⍺∘{⍵/⍨⍺∘{1∊⍺⍷⍵}¨⍵}≠∘CR pt vr ⍵}¨r
     }
     1=≡⍵:⍺ sc ⍵
     ↑∪↓⊃⍪/⍺∘sc¨⍵
⍝ search & show
⍝ ⍺ & ⍵ args to fi but ⍵ has to be a simple positive search so the entire
⍝ string is to be found as is within the target. No logical wildcards.
⍝ All potential control chars to be escaped.
⍝ ← each line of each item that contains the string.
 }
