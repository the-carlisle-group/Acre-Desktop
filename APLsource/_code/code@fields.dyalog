 codeFields←{⍺←⊢
     {
         ⍵.name←''    ⍝ after ProjectSpace.
         ⍵.value←''   ⍝ list of strings: :script or ⎕NR
         ⍵
     }⎕NS''
⍝ ← ns
⍝ Phil Last 2017-11-29 08.03
 }
