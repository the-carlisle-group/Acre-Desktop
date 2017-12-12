 itemMethod←{⍺←⊢
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     space←(⍺⊣'#'),'.'
     method←⍺⍺
     null⊃items opts←⍵:0⍴showMsg MS.DH
     0∊⍴ids←dataSpaces'':0⍴showMsg MS.GX
     items←{(⊃⍵)UT.lf # UT.li validAPLType''}if('*'∊⊃)items ⍝ wild
     0∊⍴items:0⍴showMsg MS.DH
     items←{space''['#'=⊃¨⍵],¨⍵}items   ⍝ prefix non-FQNs
     ids←whichProject¨items
     z←showMsg MS.DI showList items/⍨no←0=ids
     items ids/⍨←⊂~no
     0∊⍴items:0⍴showMsg MS.DH
     ids items←↓⍉ids{⍺ ⍵}⌸items

     1:⊃,/ids ⍺⍺ optMethod¨↓items,⍤0 1⊢opts SV

⍝ ⍺    space path whence called and whither non-FQNs attributed.
⍝ ⍺⍺   method to run - takes instance data space left arg
⍝ ⍵    args
⍝ args random list of items of possiby disparate projects
⍝ Run instance method ⍺⍺ for each subgroup of ⍵
⍝   corresponding to an open project
⍝   Methods expected to take 1 or more names and return a subset
⍝ ← merged results, '' if none
⍝ Phil Last 2017-09-08 11.32
 }
