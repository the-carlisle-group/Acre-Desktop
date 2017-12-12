 aw←{
     dict←⍺
     file←⍵
     data←dict.({(⊂⍵),1↓⍎¨'0',⍵}⎕NL-2)
     (old new)←{file,⍵,,'K-6F15.6'⎕FMT 100⊥6⍴⎕TS}¨'.OLD.' '.NEW.'
     newt←{⍵⊣⍺ ⎕FAPPEND ⍵}/(⌽data),new ⎕FCREATE 0
     ok←×oldt←{22::0 ⋄ old ⎕FRENAME file ⎕FTIE 0}0
     newt←⎕FUNTIE file ⎕FRENAME newt ⍝ ok!
     oldt←old∘⎕FERASE⍣ok⊢oldt
     file
⍝ associative file write - see also ar
⍝ ⍺  Dictionary - named vars that become the entire contents of new file.
⍝ ⍵  Filename - original safely renamed if extant and removed afterwards.
⍝ ←  ⍵
⍝ Component one is names. Following are the associated values each in the
⍝ component numbered two more than the index of its name in component one
⍝ Temp filenames are original with 'OLD', or 'NEW', and the current time.
⍝ as: original.ext.OLD.20120322.113716; original.ext.NEW.20120322.113716.
 }
