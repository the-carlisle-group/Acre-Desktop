 or←{
     ~1∊⍺:⍵         ⍝ none
     </⍺:⍵⍵⊣⍵    ⍝ only last
     2=⍴⍺:⍺⍺⊣⍵   ⍝ first of 2
     (¯1↓⍺)⍺⍺ ⍵     ⍝ penultimate?
⍝ select from list of functions
⍝ i j k ... f or g or h ... w
⍝ ↑ ←→ ↓
⍝ :Select 1
⍝    :Case i ⋄ f w
⍝    :Case j ⋄ g w
⍝    :Case k ⋄ h w
⍝     ...
⍝    :Else ⋄ w
⍝ :End
⍝ Phil Last ⍝ 2007-06-22 01:30
 }
