 wp←{
     s←0⊃'\/'{(⍵∩⍺),⍺}ws←⎕WSID
     (w p)←ws{(⍵↓⍺)(⍵↑⍺)}-(⌽ws)⍳s
     ((0∊⍴w)⊃w('.',s))((p⍳'.')↑p)
⍝ path/name of ⎕wsid
⍝ e.g.
⍝ ⎕wsid ←→ 'C:\FlipDB\Wss\Acne.DWS'
⍝ ←        'C:\FlipDB\Wss\' 'Acne'
⍝ ⎕wsid ←→ 'Acne.DWS'
⍝ ←        '' 'Acne'
 }
