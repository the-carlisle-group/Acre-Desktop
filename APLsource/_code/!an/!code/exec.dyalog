 exec←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ''≡str←trim ⍵:str
     ns←⍎SV.EX
     ∧/quoted str:descape ns.⍎str ⍝ external execute
     ns.⍎⊢descape str             ⍝ ditto
⍝ ⍵ executable string maybe with escaped ctrl chars
⍝ ← evaluated before if all quoted else after replacing ctrl chars
⍝ Phil Last 2015-12-16
 }
