 cp←{
     ⍺←⍵
     ⍺∘.⍺⍺ ⍵
⍝ MUCH quicker if ⍺⍺ is not primitive even with ¨
     (⍉((⍴⍵),⍴⍺)⍴⍉⍺)⍺⍺((⍴⍺),⍴⍵)⍴⍵
⍝ MUCH quicker with multiple identical items and pure function ⍺⍺
     i j←∪∘,¨⍺ ⍵
     (i⍳⍺)(j⍳⍵)⌷i∘.⍺⍺ j
⍝ cartesian product
⍝ Phil Last ⍝ 2006-10-02 20:29
 }
