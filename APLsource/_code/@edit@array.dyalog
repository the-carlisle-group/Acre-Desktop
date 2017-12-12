 EditArray←{

     f←{
         s←#.⎕NS''
         o←#.⍎⍵
         s.edit←⊃1⊃getValues⊂⍵
         0∊⍴s.⎕ED'edit':''
         ⍵≢d←⊃⊃fixValues,∘⊂¨⍵ s.edit:''
         o≡#.⍎⍵:''⊣showMsg ⍵ excRep MS.BV
         ⍵
     }

     n←n/⍨2.1=#.⎕NC n←'#.' ''['#'=⊃¨⍵],¨⍵
     r←⊢∘f/0,⍪n
⍝     ⍺ SetChanged r∩n

⍝ item method
⍝ ⍺ dat
⍝ ⍵ array names
⍝ ← ⍵ where amended by AN.format → ⎕ED → AN.decode
⍝ Phil Last 2017-10-09 11.41
 }
