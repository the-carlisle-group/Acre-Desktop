 Consolidate←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     dat←⍺
     0=30 ''MS.DA confirm ⍵:''
     (code←⎕NS'').(name value)←dat getAllCode''
     z←code UT.aw⊢file←dat.codefile
     file⊣⎕NDELETE/1,⍪{⍵.Path}folderObj dat.changes
⍝ ⍵ confirmation code
⍝ ← codefile name
⍝ Phil Last 2017-12-07 01.21
 }
