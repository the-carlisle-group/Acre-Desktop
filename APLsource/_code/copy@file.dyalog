 copyFile←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     src tgt←⍵
     st←src ⎕NTIE 0
     z←3 ⎕MKDIR⊃⎕NPARTS tgt
     tt←tgt{EN.FNE::⊢0 ⎕NRESIZE ⍺ ⎕NTIE ⍵ ⋄ ⍺ ⎕NCREATE ⍵}0
     lim←⌊0.5×⎕WA
     (⎕NUNTIE st tt)⊢{(⎕NREAD st,83,lim)⎕NAPPEND tt,83}⍣=¯1
⍝ copy source to target in half ⎕WA chunks
⍝ ⍵ source target - FQNs
⍝   overwrite if exists
⍝ ← size
⍝ Phil Last 2017-05-03 15.37
 }
