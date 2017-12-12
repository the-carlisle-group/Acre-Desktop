 js←{⍺←⊢
     head←':namespace ',name←⍺⊣nn df ⍵
     par←'⍝ ## ←→ ',,df ⍵.##
     consts←'(⎕IO ⎕ML)←',⍕⍵.(⎕IO ⎕ML)
     fns←,⊃,/(⊂''),⍵.((⊂'')∘,∘⎕NR¨↓⎕NL 3.2 4.2)
     fns,←⊃,/(⊂''),⍵.({('∇',¨1⍴⍵),1↓⍵,'∇'}∘⎕NR¨↓⎕NL 3.1 4.1)
     tail←':endnamespace ⍝ ',name
     head par''consts,fns,''tail
⍝ flat script from defined fns and ops only
 }
