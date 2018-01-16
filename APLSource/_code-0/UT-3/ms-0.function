 ms←{
     ⍺⊣⍎{'⍺.(',⍵,')←⍵.(',⍵,')'}'⎕io',⍕⊃~/(⍵ ⍺).⎕NL-2
⍝ merge spaces
⍝ ⍺ space
⍝ ⍵ space
⍝ ← (⍺) with union of vars in (⍺) & (⍵)
⍝   vars already in (⍺) ARE NOT OVERWRITTEN
⍝   unlike 'a'⎕ns b which overwrites common vars in a with values from b
⍝ in ms/A B C
⍝ C will remain unchanged
⍝ B will keep its own and gain vars from C not in B
⍝ A will keep its own and gain vars from B ms C not in A
⍝ no values are changed.
⍝ Phil Last ⍝ 2008-09-02 22:05
 }
