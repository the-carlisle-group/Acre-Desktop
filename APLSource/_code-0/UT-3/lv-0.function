 lv←{
     1:⎕CR⊃⎕SI
⍝ logical vector reduction
⍝ In the following list of logical vector reductions the
⍝ comment describes ⍵ when 1<⍴⍵ and the result is true.
⍝ The boolean digits are the values, for each ⍺⍺ of ,∘.⍺⍺⍨0 1
⍝ The two D:fns and two dervs are the missing logicals - (0 a c f)

     0 0 0 0 ⋄ {0}/⍵  ⍝ never
     0 0 0 1 ⋄ ∧/⍵    ⍝ no zeros
     0 0 1 0 ⋄ >/⍵    ⍝ odd leading ones
     0 0 1 1 ⋄ ⊣/⍵    ⍝ a leading one
     0 1 0 0 ⋄ </⍵    ⍝ last is only one
     0 1 0 1 ⋄ ⊢/⍵    ⍝ last is one
     0 1 1 0 ⋄ ≠/⍵    ⍝ odd ones
     0 1 1 1 ⋄ ∨/⍵    ⍝ at least one one
     1 0 0 0 ⋄ ⍱/⍵    ⍝ odd leading zeros else last is only one
     1 0 0 1 ⋄ =/⍵    ⍝ even zeros
     1 0 1 0 ⋄ (~⊢)/⍵ ⍝ last is parity of width
     1 0 1 1 ⋄ ≥/⍵    ⍝ even leading zeros
     1 1 0 0 ⋄ (~⊣)/⍵ ⍝ a leading zero
     1 1 0 1 ⋄ ≤/⍵    ⍝ last is not only zero
     1 1 1 0 ⋄ ⍲/⍵    ⍝ even leading ones else last is only zero
     1 1 1 1 ⋄ {1}/⍵  ⍝ always
 }
