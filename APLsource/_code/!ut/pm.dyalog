 pm←{⍺←⊢
     z←⎕PROFILE'clear'
     z←⎕PROFILE'start'
     r←⍺ ⍺⍺⍣⍵⍵⊢⍵
     z←⎕PROFILE'stop' ⋄ e←⍬⍴⎕LC
     p←e↓⍉↑(1+⍳5)⎕PROFILE'data'
     p[;3]←100×(⊢÷+/)p[;3]
     r{⍺ ⍵}p[⍒p[;3];]
⍝ profile monitor
⍝ ⍺     [larg]
⍝ ⍺⍺    fn
⍝ ⍵⍵    rop to ⍣ (fn or int)
⍝ ⍵     rarg
⍝ ←     res prof
⍝ res   result of: ⍺ ⍺⍺⍣⍵⍵⊢⍵
⍝ prof  ⎕profile result
 }
