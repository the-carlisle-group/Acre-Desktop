 lg←{
     ⊃(0 1 2 3=⊂⍺+⍺+⍵)∨.∧{
         ⊂[1+⍳⍴⍴⍵]2 2 2 2⊤⍵
     }⍺⍺⊣⍬
⍝ Logic - p{i}lg q
⍝ ⍺ & ⍵ - p & q are scalar conformable boolean arrays, any rank any depth.
⍝ ⍺⍺    - simple integer array or constant function to return i, scalar
⍝         conformable with p & q, whose items are zero indices into
⍝         conceptual logical scalar function vector ...
⍝   0   1 2    3    4    5    6 7 8 9   10   11   12   13 14 15
⍝ (0∧=) ∧ > (⊣∧⊢=⊢) < (⊢∧⊣=⊣) ≠ ∨ ⍱ = (⊢<⊣=⊣) ≥ (⊣<⊢=⊢) ≤ ⍲ (1∨=)
⍝ {i}lg is therefore a (⍴i) shaped logical function array
⍝  0  3 5  10   12  15  are scalar eqivalents of
⍝ {0} ⊣ ⊢ (~⊢) (~⊣) {1}
⍝ Phil Last ⍝ 2007-06-25 15:00
 }
