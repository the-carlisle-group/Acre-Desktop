 lf←{
     ⍵⌿⍨⍺ lw ⍵
⍝ ⍺ logical filter - wildcards '(*this∨that*)∧~the*other'
⍝ ⍵ namelist - 2d or string list
⍝ ← names in (⍵) matching filter
⍝ Phil Last ⍝ 2008-06-11 21:14
 }
