 pp←{
     len←⍴str←sz,' ',⍵
     word←⌈len÷+/brk←str∊' -'
     lines←⌈len÷⍺-word
     wid←⌈len÷lines
     pos←wid×⍳lines
     pos←pos ne brk/⍳len
     msk←(⍳len)∊pos
     ~∘∊⍨msk⊂1⌽str
⍝ paragraph
⍝ 4 × quicker than pa but not guaranteed to stay within width
 }
