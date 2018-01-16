 tm←{
     n←1≠≡⍵
     d←,⊂⍣n,'...'
     o←⍴d
     f←⌽⍣(⍺<0)
     w←(|⍺)⌊⍴⍵
     t←w<⍴⍵
     1:f w⍴((w-t×o)↑f ⍵),d
     ((|⍺)⌊⍴⍵)(⌽⍣(⍺<0)){⍺⍺ ⍺{⍺⍴(⍵⍴⍨⍺-3×⍺<⍴⍵),(⍳1=≡⍵)⊃3 2 1⍴¨'.'}⍺⍺ ⍵}⍵
⍝ truncate message or list
⍝    10 ¯10 9 ¯9 tm¨⊂⎕D
⍝ 0123456789  0123456789  012345...  ...456789
⍝    nms← 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
⍝    ⍪ 8 ¯8 tm¨⊂nms
⍝ one  two  three  four  five  six  seven  ...
⍝ ...  four  five  six  seven  eight  nine  ten
 }
