 expand←{
     ⍵\⍨{(¯1⌽1+⍳+/⍵)∊+\⍵}1+(quoted<SV.RB SV.LB⍷⊢)⍵
⍝ unquoted ][ → ] [
⍝ Phil Last 2015-12-16
 }
