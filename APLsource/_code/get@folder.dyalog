 getFolder←{
     ⍵{
         ⍵.(HasEdit StartIn)←1,,/1 ⎕NPARTS''if null ⍺
         ⍵.Target⊣⍵.Wait
     }⎕NEW⊂'BrowseBox'
⍝ ⍵ start-in folder
⍝ ← selected folder or ''
⍝ Phil Last 2016-09-22
 }
