 projMethod←{⍺←⊢
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     args opts←⍵
     proj arg←(1⍴args)(1↓args)
     dats projs←{2 6::'' ''
         dat←dataSpaces''           ⍝ value error
         dat dat.project            ⍝ syntax error
     }''
     msk←1(↓∊↑)UT.cc proj,projs
     0=dat←⊃1↓0,msk/dats:0⍴showMsg MS.BM

     dat ⍺⍺ optMethod arg opts dat

⍝ ⍵       args options
⍝ args    projectname arg ...
⍝ options space after args: ]cmd args [op0←1 ⋄ op1←'this']
⍝ run instance method of project named in first of args
⍝ having populated dat with items in options
⍝ If open use dat else just prepare dat and use
⍝ Phil Last 2014-10-14
 }
