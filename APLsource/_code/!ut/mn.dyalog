 mn←{
     ⍺←''
⍝    mu below is ⎕ucs 181
     m n←'yzafpnµm' 'kMGTPEZY'
     (⊂⍺),¨⍨⍵{(m,(⊂''),n)[⍵+8],¨⍨⍕¨⍺÷1000*⍵}⌊1000⍟|⍵+⍵=0
⍝ magnitute
⍝ ⍺ unit
⍝ ⍵ simple number array
⍝ ← (⍵) scaled such that (1 ≤ |n) ∧ 1000 > |n
⍝   followed by the relevant SI Prefixes and the unit (⍺)
⍝ 'g' ∇ 12345 0.12345 → 12.345kg  123.45mg
⍝ yocto, zepto, atto, femto, pico, nano, micro, milli,
⍝ 1e¯24  1e¯21  1e¯18 1e¯15  1e¯12 1e¯9  1e¯6   1e¯3
⍝ kilo,  Mega,  Giga, Tera,  Peta, Exa,  Zetta, Yotta.
⍝ 1e3    1e6    1e9   1e12   1e15  1e18  1e21   1e24
 }
