 af←{
     ⍺{(⎕NUNTIE ⍵)⊢⍺ ⎕NAPPEND ⍵,⎕DR ⍺}{
         22::⍵ ⎕NTIE 0
         ⍵ ⎕NCREATE 0
     }⍵
⍝ append file
⍝ ⍺ data in form it can be written as-is - char or num vec
⍝ ⍵ file path/name if not exists is created first
⍝ ← bytes written
⍝ Phil Last ⍝ 2011-09-12 12:00
 }
