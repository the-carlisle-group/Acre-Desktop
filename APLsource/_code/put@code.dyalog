 putCode←{dat←⍺
     src←dat.nspath
     tgt←dat.codefile
     fqn value←⍵
     name←(1+≢src)↓¨fqn ⍝ [#.nspath.]name.within.project
     code←codeFields if(0=⊢)'*'UT.ar tgt
     code.(name value)/⍨←⊂~code.name∊name
     code.(name value),←name value
     z←code UT.aw tgt
     fqn value
⍝ ⍺ dat
⍝ ⍵ fqns values
⍝ ← ⍵ same - having written to codefile
 }
