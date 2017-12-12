 is←{0::⎕NS⍣(≢⍴⍵)⊢''
     ≢⍴⍵:r⊣⍎⍕'r.('n')←v'⊣r←#.⎕NS''⊣v←↓⍉↑⍵.(⍎¨)n←(⊢⍴⍨2⌈≢)¨∩/⍵.⎕NL-2
     ≢⊢⍵:r⊣⍎⍕'r.('n')←v'⊣r←{#.⎕NS''}¨⍳≢v←↓⍉↑⍵.⍎¨n←(⊢⍴⍨2⌈≢)↓⍵.⎕NL 2

⍝ invert space(s)
⍝ ⍵ space or list thereof
⍝ ⍵ space with named lists
⍝ ← list of spaces with named items
⍝   after lists overtaken to longest
⍝ or
⍝ ⍵ list of spaces with named items
⍝ ← space with named lists
⍝   of intersect of named items
⍝ After normalisation is is self inverse.
⍝    [
⍝       nam←('five' 'zero' 'two')
⍝       num←(5 0 2)
⍝    ]
⍝ vs
⍝    [
⍝       nam←'five'
⍝       num←5
⍝    ][
⍝       nam←'zero'
⍝       num←0
⍝    ][
⍝       nam←'two'
⍝       num←2
⍝    ]
⍝ Phil Last 2017-04-10 10.14
 }
