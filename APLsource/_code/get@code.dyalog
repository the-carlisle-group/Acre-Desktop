 getCode←{dat←⍺
     src←dat.codefile
     tgt←dat.nspath,'.'
     code←codeFields if(0=⊢)'*'UT.ar src
     (tgt∘,¨code.name)code.value
⍝ ⍺ dat
⍝ ⍵ ?
⍝ ← fqn vals
⍝
 }
