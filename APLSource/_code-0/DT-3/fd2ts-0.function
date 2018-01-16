 fd2ts←{
     s←719163    ⍝ days before 1970 1 1 - ts2dd 1970 1 1
     d←5184000   ⍝ 60th secs per day    - ×/24 60 60 60
     dd2ts s+⍵÷d ⍝ inv → d×s-⍨ts2dd ⍵
⍝ filedate to timestamp
⍝ ⍵ filedate - ⊢/⎕FRDCI - 60th secs since 1970-01-01 00.00
⍝ ← timestamp - shape as (⍴⍵),7
⍝ Phil Last 2017-10-31 07.57
 }
