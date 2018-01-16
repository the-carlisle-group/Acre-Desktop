 decode←{arg←⍵
     SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍺←catalog 1⊣arg←prepare ⍵             ⍝ once
     cat←⍺
     rec←cat∘∇                             ⍝ recursive
     cat≢res←cat previous arg:res          ⍝ done?
     end←{cat record ⍺ ⍵}
     ' '∧.=arg:arg end''                   ⍝ null ??
     lvl←brackets arg                      ⍝ '0[1[2]1]' → 0 1 1 2 2 2 1 1
     ∧/lvl=0:arg end exec⊢arg              ⍝ simple executable string
     ∧/lvl>0:{                             ⍝ multi-d array
         pts←~∘∊⍨((SV.CS∘≠∨quoted∨0<brackets)ml3.⊂⊢)1↓¯1↓arg
         ns←∨/(1=lvl)∧(SV.AS∘=>quoted)arg  ⍝ or namespace
         ns∧←∧/{SV.AS=⊃⍵/⍨~∧\⍵∊SV.AZ}¨pts
         ns:arg end rec assign pts
         arg end↑(1/rec)eu pts             ⍝ diamond delimited
     }arg
     pts←~∘∊⍨arg parts lvl                 ⍝ parse items
     pts/⍨←~pts(∧/∊)¨⊂' ',SV.CS            ⍝ rem extra diamonds
     r←rec eu pts/⍨net←SV.LB=⊃¨pts         ⍝
     exp←({⍕'(',⍵,'⊃⍺)'}¨⍳⍴r)am(net∘/)pts
     arg end r exec⍕exp   ⍝ execute of composed expression
⍝ [⍺] catalog passed recursively
⍝  ⍵  encoding - see amend, encode, format, SV
⍝  ←  array
⍝ Phil Last 2015-12-12
 }
