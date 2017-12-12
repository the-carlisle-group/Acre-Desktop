 Erase←{dat←⍺
     fqn val←getValues ⍵
     (⊢⊣⎕EX)dat putChanged fqn val MS.EX
⍝ Phil Last 2017-12-06 00.48
 }
