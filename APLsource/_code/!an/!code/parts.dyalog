 parts←{
     (⍺⊂⍨⊢≠¯1↓(~⊃),⊢)∘(0∘<)⍵
⍝ partition ⍺ by contiguous booleans in ⍵
⍝ 'ZeroOneTwoThree' part 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 → 'Zero' 'One' 'Two' 'Three'
⍝ Phil Last 2015-12-14
 }
