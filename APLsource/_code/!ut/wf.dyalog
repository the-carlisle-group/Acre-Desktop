 wf←{
     ⍺{(⎕NUNTIE ⍵)⊢⍺ ⎕NAPPEND ⍵,⎕DR ⍺}{
         22::0 ⎕NRESIZE ⍵ ⎕NTIE 0
         ⍵ ⎕NCREATE 0
     }⍵
⍝ write file
⍝ ⍺ data in form it can be written as-is - char or num vec
⍝ ⍵ file path/name if exists is resized to zero first
⍝ ← bytes written
⍝ Phil Last ⍝ 2008-06-12 8:40
 }
