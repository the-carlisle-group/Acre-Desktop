 cl←{
     ⍺←⌈/⍵
     ⍵=⍺{⍵+⍺×⍺⍺≥⍺+⍵}as ⍵
⍝ clump
⍝ ⍺ desired maximum clump
⍝ ⍵ sizes
⍝ ← leading boolean partition mask such that
⍝       ⎕ML←0 ⋄ (⍺ cl ⍵)⊂⍵
⍝   or
⍝       ⎕ML←3 ⋄ (+\⍺ cl ⍵)⊂⍵
⍝   gives the largest contiguous collections of items of (⍵) having
⍝   totals not greater than (⍺) excepting individual items of (⍵)
⍝   that are greater than (⍺) dflt is maximum of (⍵)
⍝ Phil Last ⍝ 2008-07-02 19:01
 }
