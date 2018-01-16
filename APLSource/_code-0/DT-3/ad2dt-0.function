 ad2dt←{
     d←⍉(dt2ts ⍵)+∘(7∘↑)⍤1⊢⍺
     m d←1 0+(0 12)(0 24 60 60 1000)(⊣⊤⊥)¨(¯1+2↑d)(2↓d)
     (1 0 0 0 0⌿d)+←d2s⍉m⍪0
     ts2dt(s2d⊣⌿d),⍉1↓d
⍝ ⍺ period(s)    - y m d h m s m      - vector or matrix - any may be +/-
⍝ ⍵ date.time(s) - yyyymmdd.hhmmssmmm - scalar or vector
⍝   ⍺ conforms ⍤ 1 0 ⊢ ⍵
⍝       i.e. each vector in ⍺ corresponds to each element in ⍵
⍝ ← date.time ← period ∇ date.time
⍝ Phil Last 2015-11-13
 }
