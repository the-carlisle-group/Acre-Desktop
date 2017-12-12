 configFields←{⍺←⊢
     {
         ⍵.ProjectName←''    ⍝ orig folder name
         ⍵.ProjectSpace←''   ⍝ #[.path]
         ⍵.Open←''           ⍝ Open with this project
         ⍵.Load←''           ⍝ Load with this project
         ⍵.StartUp←''        ⍝ executed after OpenProject
         ⍵
     }⎕NS''
⍝ ⍵ ?
⍝ ← config space
 }
