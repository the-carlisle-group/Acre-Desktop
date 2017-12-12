 uc←{⍺←⊢
     {s←⎕NS'' ⋄ s⊣s.⍎(2 tc ⍺),'←⍵'}/⍵.({⍵(⍎⍵)},' ',⎕NL 2.1)
⍝ upper case clone
⍝ ⍵ space with vars
⍝ ← space as ⍵ but all vars are upper case
 }
