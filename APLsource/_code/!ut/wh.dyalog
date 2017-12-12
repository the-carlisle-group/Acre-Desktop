 wh←{
     f←⍺⍺ ⋄ g←⍵⍵
     (⍴⍵)⍴{⍵{⍵⊖⍺,[-0.1]⍵\f ⍵/⍺},g⊣⍵},⍵
⍝ where
⍝ ⍺⍺  fn applied to vector of items
⍝     selected from (⍵) where (⍵⍵)(⍵) true
⍝ ⍵⍵  (⍴⍵)⍴boolean or fn applied to (⍵) to return such
⍝ ⍵   array
⍝ ←   (⍵) changed by (⍺⍺) where (⍵⍵)⍵
⍝ ⍺⍺ & ⍵⍵ expected to be scalar functions.
⍝ otherwise use (⍺⍺¨) (⍵⍵¨) as in:
⍝     (⍺⍺¨)wh(⍵⍵¨)⍵
⍝ nb. A fixed left arg can be composed with ⍺⍺ as:
⍝     larg∘⍺⍺ wh ⍵⍵ rarg
⍝ Phil Last ⍝ 2008-03-11 18:15
 }
