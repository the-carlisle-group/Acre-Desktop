 getSourceFilenames←{dat←⍺
     src tgt←dat.(nspath source)
     name←(1+≢src)↓¨,∘⊂if(≡<2⌊≢)⍵
     reg←sourceFields if(0=⊢)'*'UT.ar dat.sourcereg
     x←∊∘'#'⊢file←reg.((file,'#')name)UT.co name
     (x/file)←2↓¨'#'(=⊂⊢){('/',⍵)[('.',⍵)⍳⍵]}encodeCaps⊃,/'#.'∘,¨x/name
     tgt∘,¨file,¨⊂MS.AD
⍝ ⍺ dat
⍝ ⍵ assume fqns
⍝ ← full paths
⍝   with nspath #.one
⍝   and folder c:/myproject/
⍝   #.one.TWO.Three.four → c:/myproject/APLsource/!two/@three/four.dyalog
⍝ Phil Last 2017-12-01 11.17
 }
