 deadletters←{
     {⍵,⍪MS.⍎¨⍵}{⍵/⍨0=,↑⍴¨⎕THIS UT.fi¨'MS.'∘,¨⍵}⎕A MS.⎕NL-2
⍝ redundant messages - assumes all used as MS.ID
 }
