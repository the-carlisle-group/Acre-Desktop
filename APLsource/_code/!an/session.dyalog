 session←{
     CODE.startSV 0:
     CODE.SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⎕THIS.sandbox←⎕NS''
     OPTIONS.EX←(⍕⎕THIS),'.sandbox'
     (reset ⎕EX'sandbox')⊢CODE.session ⍵

⍝ ⍵ ?
⍝   indent, await input, decode, format result +
⍝ → to end
⍝ Phil Last 2017-09-20 14.31
 }
