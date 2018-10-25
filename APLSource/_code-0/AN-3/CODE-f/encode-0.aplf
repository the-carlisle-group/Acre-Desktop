 encode←{SV.DB↓0::⎕SIGNAL/⌽⎕EN,⎕DM
     ⍺←catalog 0 ⋄ cat←⍺ ⋄ arg←⍵
     cat≢res←cat previous arg:res                                           ⍝ done?
     end←{cat record ⍺ ⍵}
     0∊⍴arg:arg end paren(⍕⍴arg),SV.RS,cat ∇⊃arg                            ⍝ empty
     n t←1 0=2 10|⎕DR arg                                                   ⍝ type
⍝     n:arg end blank arg ravel rank2code paren⍣(≡arg)⍕arg                  ⍝ simple
     n:arg end blank arg ravel rank2code paren⍣((,1)≡1<⍴arg)⍕arg            ⍝ simple
     t:arg end blank escape⍣t⊢arg ravel rank2code quote arg                 ⍝ simple
     0=≡arg:arg end cat∘∇ space arg                                         ⍝ space
     1=≡arg:arg end paren arg ravel arg enclose rank2code arg onecol↑,/cat ∇¨arg  ⍝ mixed
     1:arg end paren arg ravel arg enclose rank2code arg onecol↑,/cat ∇¨arg ⍝ nested

     arg end SV.(LB CS AS RB)                                               ⍝ error
⍝ [⍺] catalog passed recursively
⍝  ⍵  array
⍝  ←  encoding
⍝     see amend, decode, format, SV
⍝ Phil Last 2015-12-12
 }
