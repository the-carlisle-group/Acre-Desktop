 sourceFields←{
     {
         ⍵.name←''    ⍝ after project-space
         ⍵.file←''    ⍝ twixt APLsource/ & .ext
         ⍵.hash←⍬     ⍝ UT.hx ↑ #.GetBuildID
         ⍵.date←⍬     ⍝ DT.ts2dt mod date
         ⍵
     }⎕NS''
⍝ fields for sourcereg file
⍝ Phil Last 2017-11-29 08.03
 }
