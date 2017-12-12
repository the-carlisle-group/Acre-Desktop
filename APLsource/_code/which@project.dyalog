 whichProject←{
     ids←dataSpaces''
     nss←ids.nspath,¨'.'
     ⊃1↓0,ids/⍨nss(⊃⍷)¨⊂if≡⍵
⍝ ⍵ single fqn
⍝ ← dataspace
⍝   or zero if none
 }
