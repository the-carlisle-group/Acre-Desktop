 openProject←{⍺←⊢
     what project←⍵ ⋄ open load←MS.FW MS.FY∊under UT.cc what''
     target/⍨←≢/folder target←2⍴⊂if≡project
     null⊢folder←{getFolder'/'}if null⊢folder:⍬
     dat←⎕NS''
     z←showMsg(MS.ER,MS.EY)_⊢dat.folder←,∘'/'⊃,/x y z←1 ⎕NPARTS folder,'/.'
     dat.(project nspath)←2 0↓¨⊂'#.'∘,if('#'≠⊃)y,z
     dat.(config source code changes)←{
         ⍵}dat.folder∘,¨MS.HM MS.GY,,\MS.HL MS.EU
     ~∨/src cde cnf←⎕NEXISTS¨dat.(source code config):0⍴showMsg MS.HB
     dat.(codefile sourcereg)←dat.code∘,¨MS.EV MS.HF
     cnf←dat∘readConfig if cnf⊢configFields''
     dat.project{⍺ if null ⍵}←cnf.ProjectName
     dat.nspath{⍺ if null ⍵}←cnf.ProjectSpace
     space←⍎dat.nspath #.⎕NS''
     dat.nspath{'#.'∘,if('#'≠⊃)⍺ if null ⍵}←target
     z←showMsg MS.EZ,dat.nspath
     dat.(qlx open load)←cnf.(StartUp Open Load)
     z←⎕MKDIR/3,⍪dat.(source changes)/⍨~src cde
     fqn vals←dat{
         ⍵=0:'' ''
         ⍵=1:⍺ putCode 2⍴⍺ getSource''⊣showMsg MS.EP,MS.BC,MS.BD ⍝ once
         ⍵=2:⍺ putSource ⍺ getCode''⊣showMsg MS.EP,MS.BA,MS.BD   ⍝ how?
         ⍵=3:⍺ getAllCode''                  ⍝ normal
     }2⊥cde src
     fqn←fixValues fqn vals
     dat
⍝ ⍵
⍝ Phil Last 2017-11-28 09.50
 }
