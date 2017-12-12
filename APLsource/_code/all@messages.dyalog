 allMessages←{

     name←⍵ ⍝ system name
     nms←{ ⍝ local ns
         ⍵.name←name
         ⍵.author←'Phil Last <phil.last@4xtra.com>'
         ⍵
     }⎕NS''

     ⊢⎕THIS.MS←{ ⍝ global ns
         ⍵.AA←nms.name
         ⍵.AD←'.dyalog'
         ⍵.AR←'file files'

         ⍵.BA←'Source '
         ⍵.BB←'Target '
         ⍵.BC←'Code '
         ⍵.BD←'folder '
         ⍵.BM←'Project not open'
         ⍵.BN←'Project "_" closed.'
         ⍵.BV←'No change'

         ⍵.CX←'please confirm within _ by restarting with this code: "_".'

         ⍵.DA←'Fix all present changes irreversibly?'
         ⍵.DH←'No appropriate items supplied'
         ⍵.DI←'No open project can handle item'
         ⍵.DK←'Saved:'
         ⍵.DT←'keep delete'

         ⍵.EF←'Comparing '
         ⍵.EI←'Identifying changes'
         ⍵.EP←'Creating '
         ⍵.EQ←'Loading '
         ⍵.ER←'Opening '
         ⍵.ES←'Copying '
         ⍵.ET←'Deleting '
         ⍵.EU←'changes/'
         ⍵.EV←'codefile'
         ⍵.EW←'.config'
         ⍵.EX←'.DEL'
         ⍵.EY←'from '
         ⍵.EZ←'into '

         ⍵.FW←'Open'
         ⍵.FY←'Load'

         ⍵.GC←'.servers'
         ⍵.GD←'.folders'
         ⍵.GI←'hour hours'
         ⍵.GJ←'minute minutes'
         ⍵.GK←'second seconds'
         ⍵.GT←'NO MSG'
         ⍵.GX←'No open projects'
         ⍵.GY←'APLsource/'

         ⍵.HA←'The folder already contains a project - use OpenProject'
         ⍵.HB←'Invalid path or not a project - use CreateProject'
         ⍵.HC←':Array'
         ⍵.HD←':Text'
         ⍵.HE←':End'
         ⍵.HF←'sourcereg'
         ⍵.HG←':Namespace'
         ⍵.HH←':EndNamespace'
         ⍵.HI←'UTF-8'
         ⍵.HJ←'GetBuildID'
         ⍵.HK←':List'
         ⍵.HL←'.',⍵.AA,'/'
         ⍵.HM←⍵.AA,⍵.EW
         ⍵.HN←'.CHG'
         ⍵.HO←':String'

         ⍵.ID←'text for message ID'

         ⍵.__←⊃⎕XSI
         ⍵
     }⎕NS''
⍝ ⍵ system name
⍝ ← ⍵ containing messages
⍝ reuse empties - search for "←''"
⍝ Phil Last 2017-07-12 11.15
 }
