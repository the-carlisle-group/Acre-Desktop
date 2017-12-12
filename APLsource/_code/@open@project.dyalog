 OpenProject←{⍺←⊢
     dat←openProject MS.FW ⍵
     z←dataSpaces dat  ⍝ see setDataSpaces
     dat.(project nspath)
⍝ ⍵ folder [space]
⍝ ← ?
⍝ Phil Last 2017-12-04 08.28
 }
