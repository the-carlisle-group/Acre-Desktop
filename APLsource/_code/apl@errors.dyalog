 aplErrors←{
     {
         ⍵.SE←2   ⍝ SYNTAX ERROR     ⍝ {⍵::⎕EN ⋄ ⍵.⍵}0
         ⍵.IE←3   ⍝ INDEX ERROR      ⍝ {⍵::⎕EN ⋄ ⍵⊃⍳⍵}0
         ⍵.RE←4   ⍝ RANK ERROR       ⍝ {⍵::⎕EN ⋄ ⍵⊃⍵}0
         ⍵.LE←5   ⍝ LENGTH ERROR     ⍝ {⍵::⎕EN ⋄ ⍵ ⍵+⍳⍵}0
         ⍵.VE←6   ⍝ VALUE ERROR      ⍝ {⍵::⎕EN ⋄ +⍎''}0
         ⍵.DE←11  ⍝ DOMAIN ERROR     ⍝ {⍵::⎕EN ⋄ ⍵+' '}0
         ⍵.NE←16  ⍝ NONCE ERROR      ⍝ {⍵::⎕EN ⋄ 2↑#}0
         ⍵.FNE←22 ⍝ FILE NAME ERROR  ⍝ {⍵::⎕EN ⋄ ''⎕FSTIE ⍵}0
         ⍵
     }⎕NS''
⍝ namespace with error number constants
⍝ Phil Last 2017-07-12 11.15
 }
