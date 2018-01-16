 dt←{
     ⍺⊣(,⍺)∘.{⍺.((⊃⍬⍴⍵){⍴⍎⍺,'←⍵'/⍨0=⎕NC ⍺}{⊃⍬⍴⍵}⍣(2∊⍴⍵)⊢1↓⍵)},⊂⍣(1=≡⊃⍵)⊢⍵
⍝ above is existing code running in V12.0.5
⍝ below is equivalent using ⍺{...}¨¨⊂⍵ instead of ⍺∘.{...}⍵.
     ⍺⊣(,⍺){⍺.((⊃⍬⍴⍵){⍴⍎⍺,'←⍵'/⍨0=⎕NC ⍺}{⊃⍬⍴⍵}⍣(2∊⍴⍵)⊢1↓⍵)}¨¨⊂,⊂⍣(1=≡⊃⍵)⊢⍵
⍝ default
⍝ ⍺ ns(s)
⍝ ⍵ name-value pairs
⍝ ← ns(s) with named vars having values where previously missing
⍝   NB result IS ⍺ with named vars as stated.
⍝      In other words the argument is changed!!!!
⍝ Phil Last ⍝ 2006-02-21 20:54
 }
