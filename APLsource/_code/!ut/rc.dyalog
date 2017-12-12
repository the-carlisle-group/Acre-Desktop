 rc←{
     ⍺←1 1
     22::⍬    ⍝ missing file
     ⍺{(⎕FUNTIE ⍵)⊢{⎕FREAD ⍺ ⍵
         }/⍵,⍪0~⍨⍺{⍴⍴⍺:⍵/⍨⍺⍴⍨⍴⍵ ⋄ ⍺↑⍵}⊃↓∘⍳/2⍴⎕FSIZE ⍵
     }⍵ ⎕FSTIE 0
⍝ read component file
⍝ ⍺ scalar - larg to ↑ on components - 3=first 3, ¯2=last 2
⍝   vector - larg to / on components used cyclically -
⍝            (1 0)=odds, (0 0 1)=every third, default - (1 1)=all
⍝ ⍵ file path/name
⍝ ← vector of file components
⍝ Phil Last ⍝ 2008-07-04 14:55
 }
