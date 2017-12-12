 tc←{
⍝     maj←min←+
⍝     z←'maj' 'min'{⍺ ⎕NA'I4 USER32.C32|Char',⍵,'* =0T'}¨'Upper' 'Lower'
⍝     case←{(⍴⍵)⍴⊃⌽⍺⍺⊂,⍵}
     maj min←1 0
     case←819⌶
     ⍺←2
     ⍺=1:min case ⍵
     ⍺=2:maj case ⍵
     f←{
         ⍺=1:min case ⍵
         ⍺=2:maj case ⍵
         ⍺=3:⍵{(⍴⍺)⍴(2</0,≠⌿⍵)⊖⍵}↑(1 ∇ ⍵)(2 ∇ ⍵)
         ⍺≠3:⍵{(⍴⍺)⍴(⍺=(⍴⍺)⍴⍵)⊖⍵}↑(1 ∇ ⍵)(2 ∇ ⍵)
     }
     1≠≡⍵:⍺∘f¨⍵
     ⍺ f ⍵
⍝ type case
⍝ ⍺ 1 - convert to minuscule
⍝ ⍺ 2 - CONVERT TO MAJUSCULE - dflt
⍝ ⍺ 3 - Capitalise - convert to minuscule;
⍝                    Initials To Majuscule
⍝       otherwise SWITCH case
⍝ ⍵ simple text array or depth 2 or ¯2
⍝ ← ⍵ converted according ⍺
⍝ Phil Last ⍝ 2008-01-22 21:26
 }
