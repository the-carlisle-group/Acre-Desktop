 getChanges←{dat←⍺
     tgt←dat.nspath,'.'
     path←{⍵.Path}folderObj dat.changes
     null path:'' '' '' ''
     name←path{(-⍵⊥⍵)↑⍺}¨'/'≠path
     name ext←↓⍉↑(-≢MS.HN)(↓_↑)¨name
     name←tgt∘,¨'#'(2↓¨=⊂⊢)decodeCaps⊃,/'#.'∘,¨name
     dn dp←name path/¨⍨⊂ext∊⊂MS.EX   ⍝ dels
     name path/⍨←⊂ext∊⊂MS.HN        ⍝ chgs
     val←currentChange/0,⍪path
     dv←currentChange/0,⍪dp
     name val dn dv
⍝ ⍺ dat
⍝ ⍵ ?
⍝ ← names and values of changed items and of deleted
⍝   changefiles: .CHG and .DEL
⍝   fixValues elsewhere
⍝ Phil Last 2017-11-29 08.03
 }
