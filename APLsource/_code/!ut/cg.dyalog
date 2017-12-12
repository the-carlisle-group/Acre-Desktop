 cg←{
     ⍺←# dx'⎕io ⎕ml'(⎕IO ⎕ML)
     res←⍺
     (0∊⍴txt←cu∘((⎕DR'')∘rf)⍣(~CR∊⍵),⍵):res
     txt←txt re fl{('\',⍵)''}¨(CR,LF)CR LF
     txt←{(+/∧\' '=⍵)⌽⍵}{⍵⌿⍨⍵∨.≠' '}⎕FMT txt~HT
     txt←↓⊣⌿(∧\txt≠'=')⊖txt,[-0.1]cc txt
     nms←(/⍨∘(∧\)∘(≠∘']'))⍨∘(1∘↓)¨txt/⍨msk←'['=⊃¨txt
     txt←msk⊂txt
     ~∨/msk←0≤⎕NC↑nms:res
     nms txt/⍨←⊂msk
     nss←res.{⍎⍵,'←⎕ns⍬'}¨nms
     z←nss.{{q←'''"'
             (≥/i j←+/∧\~(≠\⍵∊q)<[1]'=;'∘.=⍵):⍵     ⍝ unquoted ';' before '='
             (0>⎕NC i↑⍵):⍵
             (i↑⍵){⍺{⍎⍺,'←⍵'}{                      ⍝ key←value
                     (>/1 0∊0⊃v f←⎕VFI ⍵):⍴∘f~∘1⍴f  ⍝ look like a duck?
                     {⍵~q∩⊃⍵}⍵/⍨{(∨\⍵)∧⌽∨\⌽⍵}⍵≠' '  ⍝ trim and unquote
                 }⍵
             }(1+i)↓j↑⍵
         }¨⍵}txt
     0∊⍴cpy←nss/⍨2.1=nss.⎕NC⊂⊂'copysection':res     ⍝ requiring copies
     cpy.copysection←cc cpy.(copysection~'#.[]')  ⍝ minuscule
     0∊⍴cpy←cpy/⍨9.1=res.⎕NC cpy.copysection:res    ⍝ requiring extant copies
     cpy←cpy ms∘res.⍎¨cpy.copysection               ⍝ merge
     res
⍝ config
⍝ ⍵ ini file path\name
⍝ ← namespace
⍝     ini sections as subnss (with minuscule names)
⍝       keys as vars            (ditto)
⍝         values as text or numeric strings or scalars
⍝ Phil Last ⍝ 2008-06-02 11:30
 }
