 putChanged←{dat←⍺                           ⍝ or Deleted
     null⊃fqn val del←3↑⍵:fqn
     chg del←0 1=del≡MS.EX
     fns←⍉⍪dat getChangeFilenames fqn
     fns⍪⍨←(MS.EX,⍨(-≢MS.HN)↓⊢)¨fns          ⍝ del over chg
     typ←2⊥fns∊{⍵.Path}folderObj dat.changes
⍝ extant: 0 add , 1 change , 2 delete , 3 BOTH!!!
     exi←typ≠0                               ⍝ exists
     ren←(del∧typ=1)∨chg∧typ=2               ⍝ but wrong type
     old new←↓(del=ren)⊖fns
     change←{val old new ren exi←⍵
         tie←exi{
             ⍺:⍵ ⎕FTIE 0
             (⊢⊣0 ⎕FAPPEND⊢)⍵ ⎕FCREATE 0
         }old
         ptr←val ⎕FREPLACE tie,¯1+1⊃⎕FSIZE tie
         z←new∘⎕FRENAME⍣ren⊢tie
         (⎕FUNTIE tie)⊢ptr ⎕FAPPEND tie
     }
     z←change/0,⍪↓⍉↑val old new ren exi
     z←dat∘putSource⍣chg⊢fqn val
     z←dat∘delSource⍣del⊢fqn
     fqn
⍝ ⍺ dat
⍝ ⍵ fqns values [MS.EX] if del
⍝ ← fqns
⍝ Phil Last 2017-12-04 08.28
 }
