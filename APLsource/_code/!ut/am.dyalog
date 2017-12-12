 am←{⍺←⊢
     W⊣W[i]←⍺ ⍺⍺⊣W[i←(⊂⍴W)|⍵⍵⊣⍳⍴W←⍵]
⍝ amend - [⍺](mod amend sel)⍵
⍝ [⍺] larg to ⍺⍺
⍝ ⍺⍺  modifier of selection of ⍵ or replacement thereof
⍝ ⍵⍵  selection function on ⍳⍴⍵ or selection thereof
⍝ ⍵   data to be amended
 }
