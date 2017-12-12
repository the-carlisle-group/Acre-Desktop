 fixValues←{
     null⊃fqn value←⍵:fqn
     sn2ns←⍎''#.⎕NS⍨¯1↓⊢
     ⍝ fixNs fixArray fixText fixList fixString fixFn fixClss
     ⍝ all dervs ex fixFns
     sname name←↓⍉↑fqn{(-⍵⊥⍵)(↓_↑)⍺}¨'.'≠fqn
     id←1(819⌶)1⊃row id←↓⍉↑0{⊃b←': ⍝'=⊃z←~∘' '⊃⍵:⍺,⊃1↓z
         (∨/b)∧×≢⍵:(1+⍺)∇ 1↓⍵ ⋄ ⍺' '}¨value
     res←space←0/⍨≢sname
     (x/space)←sn2ns UT.eu sname/⍨x←id='N'   ⍝ parents of :Namespaces
     data←↓⍉↑x∘/¨space name value row        ⍝ pro tem
     (x/res)←fixNs/0,⍪data                   ⍝ :Namespace
     (x/space)←sn2ns UT.eu sname/⍨x←id≠'N'   ⍝ complete space-tree
     data←↓⍉↑space name value row            ⍝ again
     (x/res)←fixArray/0,⍪data/⍨x←id='A'      ⍝ :Array
     (x/res)←fixText/0,⍪data/⍨x←id='T'       ⍝ :Text
     (x/res)←fixList/0,⍪data/⍨x←id='L'       ⍝ :List
     (x/res)←fixString/0,⍪data/⍨x←id='S'     ⍝ :String
     (x/res)←fixFn/0,⍪data/⍨x←id=' '         ⍝ f00←{
     (x/res)←(x/data)∘fixClss 1/⍨+/x←id∊'CI' ⍝ :Class :Interface
     res/sname,¨name
⍝ ⍵ fqns values
⍝ ← fqns fixed
⍝   values are lists of strings as :Script - real or sim - or ⎕NR
⍝ Phil Last 2017-10-15 17.04
 }
