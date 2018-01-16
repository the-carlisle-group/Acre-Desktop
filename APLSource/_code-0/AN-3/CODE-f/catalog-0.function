 catalog←{opt←⍵ ⋄ cat←⎕NS''
     0⊣SV.{⍎⍺,'←⍵'}/##.OPTIONS.({(↓⍵),⍪1↓⍎'0',,' ',⍵}⎕NL 2.1): ⍝ copy options to SV
     raw←''⍬(0 0⍴' ')(#.⎕NS'')                                 ⍝ null str, vec, mat & ns
     enc←SV.((AP,AP,' ')(,ZE)(LB CS RB)(LB CS AS RB))          ⍝ ditto
     cat.(key val)←cat,¨opt⌽raw enc
     cat⊣cat.def←SV.(LB,CS,(CI⌷CM AS),RB)     ⍝ trap circle or not
     ⍝ rather than spending time looking for circular refs we use the memoizing default
     ⍝ to force a domain error by having it nested. see previous
⍝ memoising catalog
⍝ ⍺ ?
⍝ ⍵ 0 - encode - key is data and val is encoding
⍝   1 - decode - key is encoding and val is data
⍝ ← cat with initial members of key and val for empty string, vector and space
⍝   and def being default encoding for incomplete structures.
⍝   Option CI (circular) (dflt 0) forces a DOMAIN ERROR when attempting to encode
⍝   a circular ref. Setting this to 1 encodes them as empty space '[⋄←]'
⍝   see SV reset
⍝ Phil Last 2015-12-12
 }
