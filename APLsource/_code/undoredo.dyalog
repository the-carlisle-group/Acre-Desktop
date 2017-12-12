 undoredo←{
     dat←⍺
     sig←⍺⍺    ⍝ Undo - , Redo +
     fqn←{⍵/⍨(#.⎕NC ⍵)∊validAPLType''},∘⊂if(≡<2⌊≢)⍵
     fil←dat getChangeFilenames fqn
     fqn fil/⍨←⊂⎕NEXISTS¨fil
     doit←{fqn fil←⍺ ⍵
         f(n x)←0(¯1 ¯2)+2⍴⎕FSIZE t←fil ⎕FTIE 0
         p←⎕FREAD t,n
         q←f⌈x⌊p sig 1
         p=q:'' ''⊣showMsg fqn excRep MS.BV⊣⎕FUNTIE t
         n←q ⎕FREPLACE t,n
         val←(⎕FUNTIE t)⊢⎕FREAD t,q
         fqn val⊣showMsg fqn excRep⍕{⍺,'of',⍵}/q x-f-1
     }
     fqn val←↓⍉↑~∘∊⍨doit/fqn,⍪fil
     done←fixValues fqn val
     done⊣dat putSource fqn val
⍝ ⍺ dat
⍝ ⍵ fqns
⍝ ← fqns where changed
⍝   non-destructive,
⍝   pointer change to previous edit if exists
⍝   changefile is [orig edit1 edit2 ... ptr]
⍝   putChange writes next edit to last comp and its number to next.
⍝   this increments or decrements pointer up twixt first & penultimate
 }
