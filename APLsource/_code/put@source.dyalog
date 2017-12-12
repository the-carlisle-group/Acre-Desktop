 putSource←{dat←⍺
     null⊃fqn value←⍵:⍵
     src tgt←dat.(nspath source)
     path←dat getSourceFilenames fqn
     tree←⎕MKDIR/3,⍪∪path{(-⍵⊥⍵)↓⍺}¨path≠'/' ⍝ ensure folders
     z←value{⍺ MS.HI ⎕NPUT ⍵ 1}¨path
     name←(1+≢src)↓¨fqn
     file←(≢tgt)↓¨(-≢MS.AD)↓¨path
     tree←fileTree tgt   ⍝ Path Size Date
     date←tree.(Date Path)UT.co path
     hash←UT.hx↑{2 ⎕NQ'.'MS.HJ ⍵}¨path
     reg←sourceFields if(0=⊢)'*'UT.ar dat.sourcereg
     reg.(name file date hash)/⍨←⊂~reg.name∊name
     reg.(name file date hash),⍨←name file date hash
     z←reg UT.aw dat.sourcereg
     fqn value

⍝ ⍺ dat
⍝ ⍵ FQNs and values  ⍝ formatted for two destinations
⍝ ← ⍵ same - having written to sourcetree
⍝ write to source tree files
⍝ get hash
⍝ write to reg
⍝ Phil Last 2017-12-01 16.54
 }
