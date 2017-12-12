 setEnvironment←{⍺←⊢                       ⍝ runs only if no projects already open
     top←UT.rs⊢ici←⎕THIS                   ⍝ child of # or ⎕SE
     ici.SV←top.⎕NS''
     path ws name←SV.(inipath workspace systemname)←⍵
     ici.MS←allMessages name
     z←fixFns'' ⍝ dervs for fixValues
     ici.EN←aplErrors''
     SV.aplversion←#.⎕WG'APLVersion'
     SV.setupcomplete←0
     SV.debug←1
     SV.lastresult←''
     SV.displaymethod←''
     SV.sessionstart←sessionStart''        ⍝ ↓ runtime = no msgs, no editor
     SV.alphabet←~∘' '{⍵/⍨0≤⎕NC'_',⍪⍵}⎕UCS⍳10000 ⍝ includes underscored alphabet
     SV.nsalpha←SV.alphabet~⎕A,(UT.cc ⎕A),⎕D,'_' ⍝ see encodeName
     z←editFix'Start'                      ⍝ sets other stuff in SV
⍝ ⍵ inipath
⍝     (c d)←,∘'.'∘⍕¨{⍵.## ⍵}(f←+)/CMS
⍝     z←⍎⎕FX 1⌽'z←1' 'z←f',{c,⍵,'←',d,⍵}¨CMS.⎕NL-3.2 ⍝ shared methods
     1:SV.setupcomplete←1
⍝ some dictionaries & derived fns
⍝ ⍵ ?
⍝   there should be no open instances when this runs
⍝ ← 1
 }
