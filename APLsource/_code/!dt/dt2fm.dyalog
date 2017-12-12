 dt2fm←{⎕CT←0 ⍝ don't let ⌊ round UP
     ((⍴⍵),19)⍴'O<>G<9999-99-99 99:99:99>'⎕FMT⌊,⍵×10*6
⍝    ((⍴⍵),19)⍴'K6G<9999-99-99 99:99:99>'⎕FMT,⍵
⍝ above gives 2008-02-19 08:11:60 for 20080219.081159910
⍝ ⍵ date.time yyyymmdd.hhmmssmmm    - shape any
⍝ ← chararray 'yyyy-mm-dd hh:mm:ss' - shape (⍴⍵),19
⍝ Phil Last ⍝ 2008-02-21 09:38
 }
