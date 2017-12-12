 delSource←{dat←⍺ ⋄ fqn←⍵
     src←dat.nspath
     tgt←dat.sourcereg
     file←dat getSourceFilenames fqn
     gone←⎕NDELETE/1,⍪file
     reg←sourceFields if(0=⊢)'*'UT.ar tgt
     nam←(1+≢src)↓¨fqn
     reg.(name file hash date)/⍨←⊂~reg.name∊nam
     gone/fqn⊣reg UT.aw tgt
⍝ ⍺ dat
⍝ ⍵ fqns
⍝ ← fqn
⍝ Phil Last 2017-12-04 08.28
 }
