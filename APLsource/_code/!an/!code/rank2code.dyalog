 rank2code←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     SV.DB<1≠≡⍵:SV.CM ⎕SIGNAL 11
     bracket∘{(,⌽∨\⌽⍵≠' ')/,⍵}∘diamond⍤2⍣{2>≢⍴⍺}⍣(1<≢⍴⍵)⊢⍵
⍝ ⍵ simple text array encoding of cells
⍝ ← ⍵ - bracketted and ravelled twixt diamonds if 1<⍴⍴⍵
⍝ Phil Last 2015-12-12
 }
