 sharedMethod←{
     SV.debug↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     arg opt←⍵

     ⍺⍺ optMethod arg opt SV

⍝ run shared method having populated SV with items in opt
⍝ Phil Last 2017-05-17 16.48
 }
