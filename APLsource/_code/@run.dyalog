 Run←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     dat←⍺
     (function arg)←UT.ht⊂if≡⍵ ⍝ ⊂if≡ redundant?
     v f←↓⍉↑⎕VFI¨arg           ⍝ arg is list of strings
     (x/arg)←⊃¨f/⍨x←v∊⊂,1      ⍝ 1 valid number in each
     dat(⍎function)arg         ⍝ should work nine times out of ten?
⍝ Doc.Reference.Methods.InstanceMethods.Run
 }
