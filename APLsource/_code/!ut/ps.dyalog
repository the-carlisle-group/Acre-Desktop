 ps←{
     def←'⍺⍺'(cr'')
     ⍺←def
     arg←,es ⍺
     fnx exc←2⍴arg,(⍴arg)↓def
     ⍺{
         ⊃,/,⍉↑{{'(',fnx,'''',⍵,''')'}¨⍵
         }\⊃{⍺∘{(⍵/2</0,⍵)⊂⍵/⍺
             }¨1 0=⊂(⍺=' '){⍵∨⍺∧⍵{⍵∊⍺/⍵}+\~⍺
             }{(⍺ ⍺⍺ ⍵)∧⌽(⌽⍺)⍺⍺⌽⍵}⍵
         }/exc ec ⍵
     }{⍵/⍨1+⍵=''''}'(',⍵,')'
⍝ parse
⍝ ⍺ 'fnexpr' ['exechars'] - default '⍺⍺' '(~<≤=≥>≠∨∧⍱⍲)\'
⍝ ⍵ string may contain text and executable chararacters.
⍝   use \ to escape executable chars including itself.
⍝ ← string parsed so that each substring is arg to fnexpr
⍝ (this∧~and)<that ←→ (((⍺⍺'this')∧~(⍺⍺'and'))<(⍺⍺'that'))
⍝ Phil Last ⍝ 2008-03-04 15:14
 }
