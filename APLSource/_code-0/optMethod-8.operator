 optMethod←{
     ⍺←⊢
     dat←⍺                                  ⍝ only item & proj
     hic←⎕THIS
     hic.OPT←1⊃arg opt dft←⍵                ⍝ dft is SV or dat
     nms←⊃∩/(opt dft).⎕NL-2.1               ⍝ only expected
     null⊢nms:{                             ⍝ no options?

         ⍵}dat ⍺⍺ arg                       ⍝ run without any

     sav←dft.⎕NS nms                        ⍝ copy from default
     hic.OPT←opt←opt.⎕NS nms                ⍝ ditto supplied
     z←'dft'⎕NS opt                         ⍝ supplied to default
     res←{z←sav.⎕EX nms/⍨(dft.⍎≢opt.⍎)¨nms  ⍝ restore only
         'dft'⎕NS sav}                      ⍝ unchanged
     0::⎕SIGNAL/⌽⎕EN,⎕DM⊣res 0

     (res 0)⊢dat ⍺⍺ arg                     ⍝ run with options

⍝ run item, shared or project method
⍝ [⍺] dat for item and project - elided for shared
⍝ ⍺⍺  method
⍝ ⍵ arg options default
⍝ ← result of method
⍝ having populated SV or dat with items in options
⍝ and restored them since
⍝ Phil Last 2017-06-15 08.51
 }
