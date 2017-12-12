 Close←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     dat←⍺                             ⍝ dat is instance data space
     inst←dat._Inst                    ⍝ this is the instance
     open←instanceDataSpaces dat       ⍝ remove from register
     z←showMsg MS.BN UT.re'_'dat.codebase
     z←(inst dat).(⎕EX ⎕NL⍳10)         ⍝ expunge object methods & properties
     z←# ⎕THIS{⍺.⎕EX ⍺ UT.sn ⍵}¨inst dat  ⍝ expunge self in root and CMS
     ≢open⊣⎕EX'SV'/⍨0=≢open
⍝ Doc.Reference.Methods.InstanceMethods.Close
 }
