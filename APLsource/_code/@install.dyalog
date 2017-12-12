 Install←{
     path wsid←2⍴,\1 ⎕NPARTS(⍵≡∊⍵)⊃⍵ ⎕WSID
     name←1↓{⍵/⍨1=+\⍵='.'}⊃⎕XSI
     mss←allMessages name ⍝ creates ⎕this.MS
     new←'#'=⊃⊃⎕XSI
     apo←'"'∘(qu←UT.qu)
     old←1↓¨{⍵⊂⍨⍵∊'∘;'}'∘',⎕SE.SALT.Settings'cmddir'        ⍝ seek'∘;'
     f←{⍵/⍨(⊢=⌈/)(+\×~)⍵∊'/\'} ⍝ last /substring/           ⍝ repl';'
     old←⊃,/';',¨old/⍨~¯1(↓∊↑)UT.cc f¨old,⊂path           ⍝ sans me
     z←⎕SE.SALT.Settings'cmddir "',path,old,'" -permanent'  ⍝ add me
     cmds parse desc help←⍕¨↓⍉qu¨1↓allMethods''
     re←{⊃⍵{(⍴,⍵)↓⊃,/⍵∘,¨(⍴,⍺)↓¨⍺{⍵⊂⍨⍺⍷⍵}⍺,⍺⍺}/⍺}
     data←(name)(path)(wsid)(cmds)(desc)(parse)(help)
     code←'<n>' '<p>' '<w>' '<c>' '<d>' '<a>' '<h>'
     script←,(⎕UCS 10),{0 3↓⍵⌿⍨>/'⍝: '⍷⍵}⎕CR⊃⎕SI
     script←⊂(⎕UCS 10){1↓¨⍵⊂⍨⍵=⍺}⊃re/(↓code,⍪data),⊂script
     z←script ⎕NPUT(path,name,'.dyalog')1    ⍝ 1=rewrite
     nms←'releaseNotes' 'aplArrayNotation' 'readMe'
     src←{⍵/⍨~∊∘1 2+\⍵='.'}⍕tgt←⎕THIS
     z←{0::0 ⋄ z←(↑(src,'.')∘,¨nms)tgt.⎕CY wsid}0
     rel apl rme←{path,⍵,'.txt'}¨nms
     z←(⊂{⍵/⍨∧\(⍵∊∊⍵)∨⍵∨.≠¨'-'}releaseNotes⊣'')⎕NPUT rel 1
     z←(⊂aplArrayNotation⊣'')⎕NPUT apl 1
     z←(⊂readMe⊣'')⎕NPUT rme 1
     ⍪(1 3/'Installed at ' ']open '),∘apo¨path rel rme apl
⍝:  :namespace <n>Init
⍝: ⍝ generated script, do not edit. None of name "<n>",
⍝: ⍝ path "<p>"
⍝: ⍝ or wsid "<w>"
⍝: ⍝ is in the source.
⍝:     ⎕io ⎕ml←0
⍝:     name  ← ,'<n>'  ⍝ string
⍝:     path  ← ,'<p>'  ⍝ string
⍝:     wsid  ← ,'<w>'  ⍝ string
⍝:     cmds  ← ,¨<c>   ⍝  list
⍝:     desc  ← ,¨<d>   ⍝  list
⍝:     parse ← ,¨<a>   ⍝  list
⍝:     help  ← ,¨<h>   ⍝  list
⍝:   ∇ r←List
⍝:     r←{⎕NS''}¨⍳⍴cmds
⍝:     r.(Name Desc)←↓⍉↑cmds desc
⍝:     r.(Parse Group)←⊂'' name
⍝:   ∇
⍝:    Help←{↑(2 2⊤1+3|⍺)/desc help⊃¨⍨cmds⍳⊂⍵}
⍝:    Run←{cmd arg←⍵
⍝:     z←wsid ⎕SE.<n>.{6::0 ⋄ ⊢'#.<n>' ⎕CY⍣(0∊⎕NC'<n>')⊢⍺}'⎕SE.<n>'⎕ns''
⍝:     nsi←((⎕XSI+.=¨'.')⍳1)⊃⎕NSI  ⍝ whence called
⍝:     parse←parse⊃⍨cmds⍳⊂cmd
⍝:     ⎕SE.<n>.<n>._code. userCmdRun cmd arg parse nsi path wsid name
⍝:    }
⍝:  :endnamespace
 }
