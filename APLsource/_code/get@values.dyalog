 getValues←{fqn←⍵
     fqn type/⍨←⊂×type←⌊(#.⎕NC fqn)(⊣×∊)validAPLType''
     type-←1×a\{1≠≢⍴⍵:0 ⋄ 0=10|⎕DR ⍵}∘#.⍎/0,⍪fqn/⍨a←type=2 ⍝ ← string
     type-←2×a\{2≠≢⍴⍵:0 ⋄ 0=10|⎕DR ⍵}∘#.⍎/0,⍪fqn/⍨a←type=2 ⍝ ← 2d ↓ list
     type-←3×a\{1≠≢⍴⍵:0 ⋄ 2≠≡⍵:0 ⋄ ∧/(''≡0∘/)¨⍵}∘#.⍎/0,⍪fqn/⍨a←type=2
     name←fqn{(-⍵⊥⍵)↑⍺}¨'.'≠fqn  ⍝ thanks Dan
     value←{n p t←⍵
         EN.NE::0                                   ⍝ non-scriptus
         t=¯1:1⌽MS.HE(MS.HK,' ',n),#.⍎p             ⍝ :List
         t=0:1⌽MS.HE(MS.HD,' ',n),↓#.⍎p             ⍝ :Text
         t=1:1⌽MS.HE(MS.HO,' ',n),UT.CR UT.sm #.⍎p  ⍝ :String
         t=2:1⌽MS.HE(MS.HC,' ',n),2 AN.format #.⍎p  ⍝ :Array
         t=9:#.⎕SRC #.⍎p                            ⍝ :Namespace/:Class
         #.⎕NR p                                    ⍝ else fn/op
     }
     vals←value/0,⍪↓⍉↑name fqn type
     fqn vals/¨⍨⊂~vals∊0
⍝ ⍵ fqns
⍝ ← fqn value - of only arrays, defined fns and ops and scripts
⍝   as may be filtered
⍝   All are lists of strings
⍝ see fixValues
⍝ Phil Last 2017-11-22 22.38
 }
