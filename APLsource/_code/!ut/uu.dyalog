 uu←{
     ⍺←#
     ⍺{⍵/⍨⍵{0∊⍴⍵~⊂⍺}¨⍺ sf¨{' ',⍵,' '}∘nn¨⍵}(/⍨)∘(0∘<∘⎕NC)⍨⍵ li 3 4
⍝ unused
⍝ ⍺ space to search - dflt #
⍝ ⍵ space to list
⍝ ← fns & ops in (⍵) NOT called from anywhere in (⍺)
 }
