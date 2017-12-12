 startSV←{
     ⍵<×⎕NC'SV':0                      ⍝ as is if exists and not forced
     hic←⎕THIS
     hic.io1←{⍵⊣⍵.⎕IO←1}⎕NS''
     hic.ml3←{⍵⊣⍵.⎕ML←3}⎕NS''
     hic.SB←⎕NS''
     hic.⎕PP←{0::⍵ ⋄ ∇ ⎕PP←1+⍵}⎕PP
     hic.SV←{                          ⍝ else [re]-create
         ⍵.AP←''''                     ⍝ apostrophe
         ⍵.AS←'←'                      ⍝ assignment
         ⍵.AZ←{⍵/⍨0≤⎕NC'_',⍪⍵}⎕UCS⍳256 ⍝ name alphabet
         ⍵.CI←0                        ⍝ circular refs
         ⍵.CM←'CIRCULAR REFERENCE'     ⍝ msg
         ⍵.CR←⎕UCS 13                  ⍝ carriage return
         ⍵.CS←'⋄'                      ⍝ cell separator
         ⍵.DB←0                        ⍝ debug ON/OFF - 1/0 - trap if OFF
         ⍵.DQ←'"'                      ⍝ doublequote
         ⍵.EC←'⊂'                      ⍝ enclose scalar or unit column
         ⍵.EE←'⍞'                      ⍝ escape
⍝ any quoted character MAY be encoded as EE,4 hex digits:
⍝ 0-9,A-F or 0-9,a-f, representing its Unicode code-point
         ⍵.EX←'SB'                     ⍝ where executa
         ⍵.IN←4                        ⍝ depth indent (format)
         ⍵.LB←'['                      ⍝ left bracket
         ⍵.LP←'('                      ⍝ left paren
         ⍵.QN←'⎕NULL '                 ⍝ disp as is not as '[NULL]'
         ⍵.RB←']'                      ⍝ right bracket
         ⍵.RP←')'                      ⍝ right paren
         ⍵.RS←'⍴⊂'                     ⍝ reshape on empty
         ⍵.RV←','                      ⍝ ravel singleton
         ⍵.ZE←'⍬'                      ⍝ empty vector (zilde)
         ⍵.UT←(⍳32),133 160            ⍝ untypeable
⍝         ⍵.UT←⎕UCS 0 2 8 9 10 13 28 29 30 31 133 160 ⍝ non-printing
⍝ all these untypeables WILL be encoded with EE as above '⍞0000' - '⍞00A0'
         ⍵
     }⎕NS''
     0
⍝ session variable space
⍝ ⍵ force new
⍝ ← 0
⍝ Phil Last 2017-02-16 19.24
 }
