 cb←{
     {(⍵[0;⍵[1;]≠'|'])⍪1 0↓⍵}∘⊖⍣2 bx{
         ⍵/⍨2∨/1,' '∨.≠⍵
     }0 2↓⍕↓↑↑{⍵⊂⍨⍵='|'}¨↓⍪↑⍵
⍝ column box
 }