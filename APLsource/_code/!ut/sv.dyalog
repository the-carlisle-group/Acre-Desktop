 sv←{⍺←⊢
     q←⊃(⍺,⍵,q)∩q←'"'''
     w←⍵\⍨{~≠\⍵/⍨1+⍵}∨/¯1 0⊖(⊢(>,⍤0∧)≠\)⍵=q
     ~∘q¨~∘∊⍨{1↓¨⍵⊂⍨(⍵=' ')>≠\q=⍵}' ',w
⍝ blank separated string to vector of words and quoted substrings
⍝ [⍺] override quote
⍝ ⍵ string
⍝ ← list of "words" which may include quoted blanks.
⍝ quote is first encountered of '"' and "'"
⍝ unless overridden by ⍺ and all are removed.
⍝ '1 23 asd "two words"' → '1' '23' 'asd' 'two words'
 }
