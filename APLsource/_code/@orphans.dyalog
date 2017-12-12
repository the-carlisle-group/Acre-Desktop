 Orphans←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     dat←⍺
     sn←{1⌽'  ',⍵↑⍨-+/∧\'.'≠⌽⍵}     ⍝ #.one.two.three → ' three '
     az←'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789∆⍙'
     nc←3.1 3.2 4.1 4.2          ⍝ defined fns & ops
     sps←1↓⍎⍕'⎕io',⍵/⍨9=⌊#.⎕NC ⍵
     (ol ul)←UT.li∘nc UT.eu 2⍴sps,dat._Space  ⍝ orphanage & wideworld lists
     on←sn¨ol                    ⍝ orphan names - simple names only
     ol/⍨~⊃{
         tg←az{⍵{⍵\⍵/⍺}⍵∊⍺}⎕VR ⍺   ⍝ alphanumerics separated by blanks
         ⍵∨(on∊⊂sn ⍺)<{1∊⍵⍷tg}¨on  ⍝ called but not by me
     }/ul,0
    ⍝ result identical to: ⊃UT.uu/⌽2⍴⍵,#

⍝ Doc.Reference.Methods.InstanceMethods.Orphans
 }
