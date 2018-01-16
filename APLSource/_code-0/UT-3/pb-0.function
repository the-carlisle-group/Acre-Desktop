 pb←{
     bl ht nb←⎕UCS' 'HT NB
     (1=≡⍵){
         (↑⍣⍺)⎕UCS∘{
             {⊃⍵ nb+.×0 1=⊂{⍵∧⌽∨\⌽~⍵}⍵∊ht bl}⍵/⍨6*⍵=ht
         }∘⎕UCS¨(↓⍣⍺)⍵
     }⍵

⍝ preserve blanks
⍝ ⍵ text perhaps with leading or embedded blanks or tabs
⍝ ← ⍵ with leading and embedded blanks and tabs replaced by
⍝   non-breaking space(NB): ' ' 1 for 1; tab(HT) 6 for 1.
 }
