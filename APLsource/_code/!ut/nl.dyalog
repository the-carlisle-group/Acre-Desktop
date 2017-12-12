 nl←{
     ⍺←⊢
     (⍕⍺⍺),⍤1⊢'.',⍺ ⍺⍺.⎕NL ⍵
⍝    (⍕⍺⍺),rk{1}'.',⍺ ⍺⍺.⎕NL ⍵
⍝ name list
⍝ ⍺ [chars]
⍝ ⍺⍺ space
⍝ ⍵ name class(es)
⍝ ← fully qualified namelist
⍝   ⍺(⍺⍺ nl)⍵ ←~→ ⍺ ⍺⍺.⎕NL ⍵
⍝     ⍺⍺ nl ⍵ ←~→   ⍺⍺.⎕NL ⍵
⍝ Phil Last 2017-05-04 22.33
 }
