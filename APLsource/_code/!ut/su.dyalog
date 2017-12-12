 su←{ft'⍝- '
⍝- :Class suicide
⍝-     ∇ inst←New(fn arg)
⍝-       :Access public shared
⍝-       inst←(⍬⍴⎕RSI).⎕NEW ⎕THIS
⍝-     ∇
⍝-
⍝-     ∇ coroner
⍝-       :Implements destructor
⍝-       (##.⍎fn)arg
⍝-     ∇
⍝- ⍝ set a destructor on an ordinary container space.
⍝- ⍝ call as:  condemned.inst←suicide.New fn arg
⍝- ⍝    named fn (accessible from space calling New) will be
⍝- ⍝    applied to arg when space - condemned - is destroyed.
⍝- ⍝ Phil Last ⍝ 2013-06-29 10:31
⍝- :EndClass
 }
