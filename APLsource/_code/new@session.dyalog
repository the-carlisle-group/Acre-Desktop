 newSession←{
     0::1                ⍝ if we error on SV.setupcomplete it must be new
     ~SV.setupcomplete:1 ⍝ if setup incomplete it must be new
     0.0001<|SV.sessionstart-sessionStart''
⍝ ⍵ ignored
⍝ Is this a new session? yes/no
⍝ If setup isn't complete or if saved session start is significantly
⍝    before actual because ws has been saved with CMS open
 }
