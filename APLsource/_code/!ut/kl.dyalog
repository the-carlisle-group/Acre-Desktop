 kl←{⍺←⊢
     y m←0 100⊤⍵
     y←y+(y=0)⊃0,⎕TS
     y<100:∇¨(⍵×100)+1+4 3⍴⍳12
     l←>/0=4 100 400|y
     md←0 31 28,10⍴5⍴31 30
     fy←{(⍵×365)+(⌊⍵÷4)-(⌊⍵÷100)-⌊⍵÷400}y-1
     ytd←(m⊃+\0,md)+l∧m>2
     r←1↓43↑' ',1+⍳(m⊃md)+l∧m=2
     t←~∘' ',m⊃' ',{⍵/⍨¯1≠⎕NC ⍵}⎕NR⊃⎕SI
     1:↑(⊂⍕t,y),↓⍕'SMTWTFS'⍪6 7⍴(-7|1+fy+ytd)⌽r
     January
     February
     March
     April
     May
     June
     July
     August
     Sepember
     October
     November
     December
⍝ kalends
 }
