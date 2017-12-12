 userCmdRun←{
     (method string parser space path wsid name)←⍵
     z←Start path wsid name                  ⍝ once
     z←openProjects''                        ⍝ still open?
     str com←(∧\quoted≥'⍝'=⊢)UT.sp string    ⍝ sep comments
     str opt←(∧\quoted≥'['=⊢)UT.sp str       ⍝ sep opts
     strs←UT.sv str                          ⍝ words and strings
     opt←{0::⎕NS'' ⋄ AN.decode ⍵,'←]'~⍵}opt
     (item proj share)←'i' 'p' 's'=⊃parser   ⍝ see allMethods
     res←'res'{⍵,⍺/⍨null ⍵}SV.lastresult     ⍝ local if not assigned
     ⊢res{⍎⍺,'←⍵'}method{

         item:space(⍎⍺)itemMethod ⍵          ⍝ items of arg are names

         proj:(⍎⍺)projMethod ⍵               ⍝ first item is project

         share:(⍎⍺)sharedMethod ⍵            ⍝ arg is specific to method

     }strs opt
⍝ ⍵ method; arg string; type of fn; whence called; whence loaded; system.
⍝ Phil Last 2017-09-18 08.39
 }
