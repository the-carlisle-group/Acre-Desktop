 sl←{⍺←0
     t r←⍺⌽'\/'
     sl←{⊢⌿(⍵=t)⊖r,[-0.1]⍵}
     1=≡⍵:sl ⍵
     sl¨⍵
⍝ ensure slash/backslash
⍝ ⍺ 0 1
⍝ ⍵ filename(s) nested and/or multi-D
⍝ ← (⍺=0) ⍵ all '/' not '\' - dflt
⍝   (⍺=1) ⍵ all '\' not '/'
⍝ Phil Last 2017-05-20 16.26
 }
