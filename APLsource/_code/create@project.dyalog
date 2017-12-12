 createProject←{dat←⎕NS''
     eq←≡/dat.(folder nspath)←2⍴⊂if≡⍵
     dat.folder←⊃,/'/',⍨x y z←1 ⎕NPARTS dat.folder,'/.'
     dat.nspath←'#.'∘,if('#'≠⊃)(dat.project←y,z)if eq⊢dat.nspath
     dat.(config source code changes)←{
         ⍵}dat.folder∘,¨MS.HM MS.GY,,\MS.HL MS.EU
     dat.(codefile sourcereg)←dat.code∘,¨MS.EV MS.HF
     ∨/⎕NEXISTS¨dat.(source code config):0⍴showMsg MS.HA
     space←#.⍎#.⎕NS∘''if(0=⎕NC)dat.nspath
     z←3 ⎕MKDIR¨dat.(source changes)
     (cfg←configFields'').(ProjectName ProjectSpace)←dat.(project nspath)
     z←(1⌽MS.HH MS.HG,1↓¯1↓2 AN.format cfg)MS.HI ⎕NPUT dat.config
⍝    z←(2 AN.format cfg)MS.HI ⎕NPUT dat.config             ⍝ APLAN
⍝    z←(0 1(819⌶)cfg)                                      ⍝ JSON
     dat.(open load qlx)←cfg.(Open Load StartUp)
     fqn val←getValues space UT.li 2 3 4 9
     fqn val←dat putCode dat putSource fqn val
     dat
⍝ ⍵ path [space]
⍝ ← ?
⍝ Phil Last 2017-11-28 09.50
 }
