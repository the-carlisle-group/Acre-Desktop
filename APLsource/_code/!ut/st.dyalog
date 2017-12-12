 st←{
     0 ⍺⍺{
         ⍬⍴⍺:⍺
         ⍬⍴r←⍺⍺ ⍵:r
         ⊃∇⍨/(⍵⍵ ⍵),0
     }⍵⍵ ⍵
⍝ search tree - return on first hit or exhaustion
⍝ ⍺⍺ test
⍝    ⍵ node (namespace, folder ...
⍝    ← boolean, other data
⍝ ⍵⍵ subtree  - needs to check for recursion
⍝    ⍵ node
⍝    ← list of nodes in ⍵
⍝ ⍵  tree
⍝ ←  as of last search
 }
