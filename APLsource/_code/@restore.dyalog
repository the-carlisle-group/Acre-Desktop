 Restore←{
     dat←⍺ ⋄ fqn←⍵
     tgt src←MS.EX MS.HN
     del←(tgt,⍨(-≢src)↓⊢)¨chg←dat getChangeFilenames fqn
     fqn del chg/⍨←⊂⊢∘⎕NEXISTS/0,⍪del
     val←{
         t←⍵ ⎕FTIE 0
         c v←¯2 ¯1+⎕FDROP t ¯1
         v←⎕FREAD t v
         c=0:v⊣⍵ ⎕FERASE t ⍝ was created by Erase
         v⊣⍺ ⎕FRENAME t
     }/chg,⍪del
     fqn val←dat putSource fqn val
     fixValues fqn val
⍝    Remove last component from .DEL file
⍝    If single component, erase file
⍝    Replace new last with previous component number
⍝    Rename to .CHG
⍝    Refix in ws
⍝ Phil Last 2017-12-06 00.48
 }
