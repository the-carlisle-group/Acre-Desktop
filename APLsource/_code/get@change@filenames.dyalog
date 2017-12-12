 getChangeFilenames←{dat←⍺
     src tgt←dat.(nspath changes)
     tgt∘,¨,∘MS.HN¨'#'(2↓¨=⊂⊢)encodeCaps⊃,/'#.'∘,¨(1+≢src)↓¨,∘⊂if(≡<2⌊≢)⍵
⍝ ⍺ dat
⍝ ⍵ fqns
⍝ ← full paths
⍝   with nspath #.one
⍝   and folder c:/myproject/
⍝   #.one.TWO.Three.four → c:/myproject/.acre/changes/!two.@three.four.CHG
⍝ must be encoded as separate files
⍝ Phil Last 2017-12-01 11.17
 }
