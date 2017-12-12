 lc←{⍺←⊢
     {s←⎕NS'' ⋄ s⊣s.⍎(1 tc ⍺),'←⍵'}/⍵.({⍵(⍎⍵)},' ',⎕NL 2.1)
⍝ lower case clone
⍝ ⍵ space with vars
⍝ ← space as ⍵ but all vars are lower case
 }
