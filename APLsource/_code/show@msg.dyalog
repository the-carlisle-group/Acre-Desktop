 showMsg←{
     (null ⍵):⍵             ⍝ empty arg
     disp←SV.displaymethod
     data←ntbs ⎕FMT↑⍵
     'off'≡0(819⌶)disp:data     ⍝ its NOT having been displayed!
     '#'∊disp:data⊣⍎disp,(2 0 3⍳#.⎕NC disp)↓',← data'
⍝    data⊣#.what← data          ⍝ named buffer - missing
⍝    data⊣#.what,← data         ⍝              - array
⍝    data⊣#.what data           ⍝              - function
     1:⊢{⎕←⍵}¨data              ⍝ else send everything to the session

⍝ ⍵ is msg(s) to be displayed
⍝ ← ⍵ its having been displayed or otherwise
⍝   values of SV.displaymethod recognised as
⍝   determining output. Default is session.
⍝   'NULL' set if Runtime interpreter
⍝   '#.path.to.missing' initialises buffer
⍝   '#.path.to.array' is buffer
⍝   '#.path.to.function' runs explicit function with arg - ignores result
⍝ Phil Last ⍝ 2008-10-26 08:27
 }
