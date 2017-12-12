 sx←{
     ⍺←⊢
     s←⊃{⍺,'∨',⍵}/⍺ fi ⍵
     t←{1↓¨⍵⊂⍨⍵=''''}{⍵/⍨≠\⍵=''''}ps ⍵
     {⍵⌿⍨~>/'⍝'=↑⊢/⍵}↑∪↓⊃⍪/s∘sc¨t

⍝ search executable (not in comments
 }
