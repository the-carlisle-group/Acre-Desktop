 copyFolder←{⍺←⊢ ⋄ era←1=⍺⊣0
     source target←'/'UT.sm¨UT.cc(UT.sl∘⊃,/∘⎕NPARTS)¨⍵
     src←⊃,/,∘'/'¨source
     n←≡/⊢/¨source target
     tgt←⊃,/,∘'/'¨target,n↓⊢/source
     z←showMsg MS.EI
     sp tp←{
         s←fileTree src
         z←3 ⎕MKDIR tgt
         t←fileTree tgt
         (s t).Path
     }UT.tk 0
     z←showMsg MS.EF,(≢sp)UT.pl MS.AR
     del copy←{
         sp←(⍴src)↓¨sp
         tp←(⍴tgt)↓¨tp
         s t←UT.cc sp tp
         del←tgt∘,¨tp/⍨~t∊s
         miss←↓⍉src tgt∘.,sp/⍨~mem←s∊t
         both←src tgt∘.,sp/⍨mem
         hash←{2 ⎕NQ'.' 'GetBuildID'⍵}
         diff←↓⍉both/⍨~≡⌿hash¨both
         del(miss,diff)
     }UT.tk 0
     del/⍨←era
     z←showMsg era/MS.ET,(≢del)UT.pl MS.AR
     z←⎕NDELETE⍨/UT.tk del,1
     z←showMsg MS.ES,(≢copy)UT.pl MS.AR
     z←(copyFile⊣)/UT.tk copy,0
     ⊢/↑copy
⍝ copy only missing and different.
⍝ [⍺] 1: delete from target if not in source
⍝ ⍵ source and target paths.
⍝   if last names differ then folder with
⍝   name of source is created inside target.
⍝ e.g.  copyFolder 'C:/alpha/bravo' 'D:/charlie/delta'
⍝       creates 'D:/charlie/delta/bravo'
⍝ while copyFolder 'C:/echo/foxtrot' 'D:/golf/foxtrot'
⍝       uses 'D:/golf/foxtrot'
⍝ ← copied paths
 }