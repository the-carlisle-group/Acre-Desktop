 aa←{⍺←⊢
     ⍵{⊣/⍵⌽'&',⍪⍵\⍺}{(1+⍳⌈/⍵)∊⍵}+\1+<\~(1 cc ⍵)∊1 cc{⍵/⍨¯1⌽⍵='&'}⊃,/⍺
⍝ ⍺ extant captions
⍝ ⍵ new caption
⍝ ← new caption with (or without) &
⍝ add accelerator ampersand to new caption ⍵ given extant captions ⍺
 }
