 rf←{
     ⍺←⎕DR''
     22::0/' ' 0[2|⍺]
     ⍺{(⎕NUNTIE ⍵)⊢⎕NREAD ⍵,⍺,2↑⎕NSIZE ⍵}⍵ ⎕NTIE 0
⍝ read file
⍝ ⍺ conversion - dflt ⎕DR'' (?80?82?) - giving text
⍝ ⍵ file path/name
⍝ ← file body - type acc'g ⍺
⍝   if no file - ⍬ or '' acc'g ⍺ is odd or even
⍝ Phil Last ⍝ 2008-06-12 8:40
 }
