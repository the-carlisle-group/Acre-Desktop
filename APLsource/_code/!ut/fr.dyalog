 fr←{⍺←⊢
     (⊃⊢∘⊂/(≡⍵)↓0 0 ⍵){⊃1↓0,⍵⌿⍨{(⍵≠0)∧⍵=⌈/⍵}+/∨\('.',⍺,' ')⍷⍕⍪⍵}¨⊂nt ⍺⊣#
⍝ find ref(s) in tree of tgt
⍝ ⍺ tgt - space - dflt #
⍝ ⍵ simple name(s)
⍝ ← scalar or vector ref(s) nearest root or zero(s)

⍝ was:
⍝     ⊃⍺⍺/⍺,⊂⍵
⍝ for loop (fold right)
⍝ a b c d f fr w ←→ a f(b f(c f(d f w)))
⍝ Phil Last ⍝ 2011-10-20 07:26
 }
