 getAllCode←{dat←⍺
     cn cv←dat getCode''              ⍝ entire
     scn scv sdn←dat getSource''      ⍝ chg or del in source
     xcn xcv xdn xdv←dat getChanges'' ⍝ chg or del in code

     del←sdn∪xdn~scn    ⍝ src-del and cde-del w/o src-chg
     chg←scn∪xcn~sdn    ⍝ src-chg and cde-chg w/o src-del
     values←(scv,xcv,xdv,cv,0){⍺⍺[⍵⍵⍳⍵]}(scn,xcn,xdn,cn)
⍝    corresponding values from src-chg, cde-chg, cde-del or orig
     z←dat putDeleted del(values del)
     z←dat putChanged chg(values chg)

     nms←chg∪cn~del     ⍝ chg and orig w/o del
     val←values nms
     nms val

⍝ ⍺ dat
⍝ merge all sources for session
⍝ runs only under Open/Load
⍝ Phil Last 2017-12-06 00.48
 }
