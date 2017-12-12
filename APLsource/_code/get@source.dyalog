 getSource←{dat←⍺
     src←dat.source                                   ⍝ ../APLsource/
     tgt←dat.nspath,'.'
     read←{⊃MS.HI ⎕NGET ⍵ 1}
     (path date)←{⍵.(Path Date)}fileTree⊢src
     (path date)/⍨←⊂((-≢ext)↑¨path)∊⊂ext←MS.AD
     file←((≢src)↓(-≢ext)↓⊢)¨path
     name←'#'(2↓¨=⊂⊢)decodeCaps{('.',⍵)[('/',⍵)⍳⍵]}⊃,/'#.'∘,¨file
     reg←sourceFields if(0=⊢)'*'UT.ar dat.sourcereg
     del←reg.name~name                                ⍝ file missing
     reg.(name file date hash)/⍨←⊂reg.name∊name       ⍝ reg w/o dels
     diff←date≠reg.(date name)UT.co name              ⍝ diff of date
     (name file date path)/⍨←⊂diff                    ⍝ res only diff
     hash←UT.hx↑{2 ⎕NQ'.'MS.HJ ⍵}¨path                ⍝ hash of diff
     diff←hash≠reg.(hash name)UT.co name              ⍝ diff of hash
     (name file date hash path)/⍨←⊂diff               ⍝ res only diff
     reg.(name file date hash)/⍨←⊂~reg.name∊name      ⍝ reg w/o res
     reg.(name file date hash),←(name file date hash) ⍝ reg + res
     z←reg UT.aw dat.sourcereg
     vals←read/0,⍪path
     (tgt∘,¨name)vals(tgt∘,¨del)
⍝ ⍺ dat
⍝ ⍵ ?
⍝ ← fqns values dels
⍝   changed or deleted since previous sync
⍝   add to code- or change-files elsewhere
⍝ see putItem
⍝ Phil Last 2017-10-15 17.04
 }
