 fileTree←{⍺←⊢
     root←⊃,/1 ⎕NPARTS ⍵,'/.'
⍝     file←{⍵⊣⍵.(Path Name Size Date Folder)←'' ''⍬'' ''}⎕NS''
     file←{⍵⊣⍵.(Path Size Date)←''⍬ ⍬}⎕NS''
     tree←{file dir←⍺ ⍵
         p t s d←0 1 2 3 ⎕NINFO⍠1⊢dir,'/*'
         (sub z z)(p s d)←↓¨(1 2=⊂t)/¨⊂↑p s d
⍝         n←(1+≢dir)↓¨p
⍝         f←(-≢¨n)↓¨p
⍝         file.(Path Name Size Date Folder),←p n s d f
         file.(Path Size Date),←p s d
         ∇⍨/sub,file
     }
     r←file tree root
     r⊣r.Date←DT.ts2dt↑r.Date
⍝ file object - complete tree - see folderObj
⍝ ⍵ string - file root path
⍝ ← scalar space with [Path Size Date] for all files in tree
⍝   Path will always contain '/' rather than '\'
⍝   Date is float YYYYMMDD.hhmmss (smaller and 1 vs 7 per item)
 }
