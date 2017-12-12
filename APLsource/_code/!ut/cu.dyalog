 cu←{
     80≠⎕DR'':⍵    ⍝ non-unicode edition
     {
         ⍵↓⍨(⎕UCS⊃⍵)∊65534 65279
     }⍵{
         ∧/⍵<194:⍺ ⍝ maybe but doesn't matter
         ∨/⍵>244:⍺ ⍝ can't be
⍝ start not followed by continuation
⍝         ∨/((⍵>193)∧⍵<245)>1↓((⍵>127)∧⍵<192),0:⍺
⍝ continuation not preceded by start or continuation
⍝         ∨/((⍵>127)∧⍵<192)>¯1↓1,(⍵>127)∧⍵<245:⍺
         ⍝ let ⎕UCS test for start followed by wrong number of continuations
         11::⍺
         'UTF-8'⎕UCS ⍵
     }⎕UCS ⍵
⍝ convert UTF-8 or not
⍝ ⍵ text string, - UTF-8 bytes or not
⍝ ← clear text
 }
