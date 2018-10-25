 dr←{
     ⍺←⌊0.5++/⍵
     n+(×e)×(⍳⍴⍵)∊(|e←⍺-+/n←⌊0.5+⍵×⍺÷+/⍵)⍴⍒|⍵
⍝ [re]distributive rounding
⍝ [⍺]   [new] integer sum
⍝  ⍵    vector
⍝  ←    ⍵ rounded and scaled to sum to ⍺
⍝       total rounding error distributed
⍝       among items of greatest magnitude
⍝ 2007-12-04 10.25 comp.lang.apl cb75f8564a3e0b22
⍝ http://groups.google.com/group/comp.lang.apl/browse_thread/thread/cb75f8564a3e0b22
 }
