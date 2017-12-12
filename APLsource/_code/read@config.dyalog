 readConfig←{dat←⍺ ⋄ res←⍵
     d←~∘∊⍨⊃MS.HI ⎕NGET dat.config 1
     r t←0{'⍝'=z←⊃~∘' '⊃⍵:(1+⍺)∇ 1↓⍵ ⋄ ⍺ z}d
     cfg←t{              ⍝ actuals
         0::⎕NS''                       ⍝ ??
         ⍺='{':7159⌶1↓⊃,/(⎕UCS 13),¨⍵   ⍝ JSON
         ⍺=':':0 ⎕FIX ⍵                 ⍝ APLscript
         ⍺='[':AN.decode ⍵              ⍝ APLAN
         ⎕NS''                          ⍝ none of the above
     }r↓d
     res⊣'res'⎕NS cfg.⎕NS⊃∩/(cfg res).(⎕NL-2) ⍝ overwrite with actuals
⍝ ⍺ dat
⍝ ⍵ ns configFields
⍝ config is JSON, APLscript or APLAN
⍝ result is namespace with all and only expected fields
 }
