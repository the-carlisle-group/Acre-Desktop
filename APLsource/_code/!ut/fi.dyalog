 fi←{⍝ find
     ⎕ML←0
     ⍺←#
     0::((⊃⎕DM),' - Try escaping "',(⍵∩'(~<≤=≥>≠∨∧⍱⍲)\'),'"')⎕SIGNAL ⎕EN
     ('1∊⍵⍷⍨'ps ⍵){⍵/⍨⍺∘{⍺{⍎⍺}⍕⍵{
                 (⍵∊3 4):2↓⊃,/' ',CR,¨⎕NR ⍺
                 (⍵=2):⍎⍺
                 (⍵=9):⎕SRC⍎⍺
                 ''
             }⎕NC ⍵}¨⍵}{
         2=≡⍵:⍵
         (⍬≡0⍴⍵):li ⍵
         (9=⎕NC'⍵'):⍵ li 3.1 3.2 4.1 4.2 9.4
         (⊃{⍺,'∨',⍵}/⊂if≡⍵)lf # li 3.1 3.2 4.1 4.2 9.4
         (''≢0⍴⍵):⍵ li 3.1 3.2 4.1 4.2 9.4
         ⍵ lf # li 3.1 3.2 4.1 4.2 9.4
     }⍺
⍝ find
⍝ ⍺ ref     - search all in or below
⍝   string  - logical wildcard selection of candidates anywhere
⍝   numbers - candidate ⎕NCs - dflt - 3.1 3.2 4.1 4.2 9.4
⍝ ⍵ search string - can contain executables "(~<≤=≥>≠∨∧⍱⍲)". see ps
⍝ ← fully qualified names of arrays, fns, ops & classes where found.
⍝ Phil Last ⍝ 2008-03-04 13:53
 }
