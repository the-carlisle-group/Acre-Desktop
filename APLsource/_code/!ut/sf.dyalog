 sf←{
     ⎕ML←0
     aA0←(~∘' ''',(/⍨∘(≠\∘(''''∘=))⍨ps ⍵),ab'')∘{⍵{⍵\⍵/⍺}⍵∊⍺}
     ⍺←#
     0::((⊃⎕DM),' - Try escaping "',(⍵∩'(~<≤=≥>≠∨∧⍱⍲)\'),'"')⎕SIGNAL ⎕EN
     ('1∊⍵⍷⍨'ps ⍵){⍵/⍨⍺∘{⍺{⍎⍺}aA0,⍕⍵{
                 (⍵∊3 4):⎕VR ⍺
                 (⍵=2):⍎⍺
                 (⍵=9):⎕SRC⍎⍺
                 ''
             }⎕NC ⍵}¨⍵}{
         (''≢0⍴⍵):⍵ li 3 4 9.4
         ⍵ lf # li 3 4 9.4
     }⍺
⍝ syntax find
⍝ ⍺ ref    - search all in or below
⍝   string - wildcard selection of candidates anywhere
⍝ ⍵ search string - can contain executables "(~<≤=≥>≠∨∧⍱⍲)". see ps
⍝ ← fully qualified names of arrays, fns, ops & classes where found.
⍝ Phil Last ⍝ 2008-03-12 19:30
 }
