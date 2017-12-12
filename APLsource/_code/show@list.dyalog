 showList←{
     (≢∘∊⍨⍵)/(⊂⍺∪':'),ntbs⍕1 UT.ty ⍵
⍝ ⍺ message:
⍝ ⍵ list e.g. 'one' 'two' 'three' ...
⍝ ← list as:
⍝ message:
⍝  one    four   seven  ...
⍝  two    five   eight
⍝  three  six    ...
⍝ empty if ⍵ empty
 }
