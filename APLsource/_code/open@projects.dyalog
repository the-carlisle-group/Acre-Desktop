 openProjects←{
     0∊⍴ids←dataSpaces'':ids         ⍝ open
     missing←ids/⍨9≠⌊⎕NC ids.nspath  ⍝ path missing
     1:⊢ids←dataSpaces missing       ⍝ remove
⍝ ensure open projects still in ws
⍝ remove any ids where nspath no longer a space.
⍝ Phil Last 2017-12-06 00.48
 }