 deleteFolder←{
     {
         n t←0 1 ⎕NINFO⍠1⊢⍵,'/*'    ⍝ name and type
         d f←(1 2=⊂t)/¨⊂n           ⍝ dirs and files
         z←∇⍨/d,⎕NDELETE⍨/f,1       ⍝ del files and dirs
         z←⎕DL×≢n                   ⍝ delay if members
         ⎕NDELETE ⍵                 ⍝ now it's empty
     }⊃,/1 ⎕NPARTS ⍵,'/.'
⍝ delete folder and tree
⍝ Phil Last 2017-06-02 08.12
 }