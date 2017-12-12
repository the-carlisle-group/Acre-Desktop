 ru←{0::''
     1↓⊃,/(⎕UCS 13),¨0⊃'UTF-8'⎕NGET ⍵ 1
⍝ read unicode
⍝ ⍵ filepath
⍝ read UTF-8 file with CR (U+000D)
 }
