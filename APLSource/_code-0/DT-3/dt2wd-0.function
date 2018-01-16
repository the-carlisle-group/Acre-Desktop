 dt2wd←{
     d←7|¯1+s←d2s⍉↑y m d←↓0 100 100⊤,⌊⍵
     n←s-(⊂u⍳y)⌷d2s(u←∪y),⍤0 1⊢1 1
     w←⌊(10+n-d)÷7
     0 1 0 1+⍤1⊢y,n,w,⍪d

⍝ l t←↓⍉(⊂u⍳y)⌷{(0=4|⍵)>(0=100|⍵)>0=400|⍵}u∘.-1 0 ⍝ leap last and this

⍝ ⍵ date/datetime yyyymmdd treated as vector
⍝ ← year yearday weekno weekday (4 cols)
⍝ yearday: 1 Jan ←→ 1
⍝ weekno, weekday: ISO - week 1 includes 4 Jan and Mon is day 1
⍝ - except -
⍝ weekno is 0 to 53 where 0 SHOULD be last week of previous year
⍝ (52 or 53) and year-1;
⍝ and 53 MIGHT be first of next and year+1
 }
