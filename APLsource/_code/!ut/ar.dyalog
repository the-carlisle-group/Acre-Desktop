 ar←{
     req←' 'sm⍕⍺
     22::0 ⍝ missing file
     tie←⍵ ⎕FSTIE 0
     dct←⎕FREAD tie,1
     0∊⍴req:dct⊣⎕FUNTIE tie
     cmp←2+dct⍳nms←(⍺≡'*')⊃req dct
     0∊⍴cmp:⎕NS''⊣⎕FUNTIE tie
     20::⎕SIGNAL/⌽⎕EN,⎕DM⊣⎕FUNTIE tie ⍝ file index error
     (⎕FUNTIE tie)⊢dx nms{⍺ ⍵}⎕FREAD tie cmp
⍝ associative file read - see also aw
⍝ ⍺ required names | '*' for all | '' for names
⍝ ⍵ filename - component 1 is names. following are the associated values.
⍝ ← dictionary with named vars | 0∊⍴⍺: names | file missing: 0
 }
