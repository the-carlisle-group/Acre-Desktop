 wt←{
     sofar inc←0 0.1
     wait←⊃⍵⍵,1
     rslt←this←⎕NS''
     tid←⍺⍺{6::
         rslt∘←⍺⍺ ⍵
     }&⍵
     {(tid∊⎕TNUMS)≤wait≤sofar:0
         ∇ sofar+←⎕DL inc
     }0:
     tid←⎕TKILL tid
     rslt≢this:rslt
     ⍺←⊢
     1≢⍺ 1:⍺
⍝ wait
⍝ ⍺  dflt result if supplied
⍝ ⍺⍺ function - monad or (larg∘dyad)
⍝ ⍵⍵ seconds for (⍺⍺) to finish - number or {fn} to return such
⍝ ⍵  rarg to (⍺⍺)
⍝ ←  If (⍺⍺) returns a result then this returns it.
⍝    Otherwise if (⍺) is supplied this returns that.
⍝    Otherwise this returns nothing.
⍝ Phil Last ⍝ 2007-06-23 18:50
 }
