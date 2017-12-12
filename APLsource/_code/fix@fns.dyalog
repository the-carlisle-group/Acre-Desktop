 fixFns←{
     ici←⎕THIS
     ici.fixNs←⊢∘{0::0 ⋄ s n d r←⍵ ⋄ 1⊣s.⎕FIX d}
     fixVar←{0::0 ⋄ s n d r←⍵ ⋄ 1⊣n s.{⍎⍺,'←⍵'}⍺⍺(1+r)↓(-1+⊥⍨d∊∊d)↓d}
     ⍝ ↑ is local operator cariied by next four fns
     ici.fixArray←(AN.decode~∘∊⍨)fixVar
     ici.fixText←↑fixVar
     ici.fixList←⊢fixVar
     ici.fixString←{1↓⊃,/UT.CR,¨⍵}fixVar
     ici.fixFn←⊢∘{0::0 ⋄ s n d r←⍵ ⋄ 1⊣s.⎕FX d}
     ici.fixClss←~{⍵\~1↓0,fixNs/0,⍪⍵/⍺}⍣≡
     1:1
⍝ ⍵ ?
⍝ ← ?
⍝   whole bunch of dervs for use by fixValues
⍝ Phil Last 2017-12-05 23.10
 }
