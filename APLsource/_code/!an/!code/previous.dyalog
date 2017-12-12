 previous←{cat←⍺ ⋄ arg←⍵
     cat≢res←cat.(((≢key)|key⍳⊂⍵)⊃val):res ⍝ been there! done that!
     cat⊣cat.(key val),←⊂¨⍵ cat.def        ⍝ this is NOT the tee-shirt
⍝ ⍺ cat - see catalog
⍝ ⍵ arg which might or might not be in cat.key
⍝ ← if arg in cat.key then corresponding cat.val
⍝   else cat after adding arg and default cat.def to cat.key and cat.val
⍝   to be overwritten with the complete result when computed. see record.
⍝   The only way the default can be returned is if arg is a circular
⍝   reference whose encoding is as yet incomplete and it is designed
⍝   to cause a domain error.
⍝ Phil Last 2015-12-12
 }
