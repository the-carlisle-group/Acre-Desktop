 desc←{1 1↓¯1↓⎕CR⊃⎕SI

⍝ You may put certain named values in this ns to override the defaults:
⍝   DB debug           zero traps, one does not                         default: zero
⍝   CI circular refs   zero throws error, one substitutes an empty ref  default: zero
⍝   EX execute space   FQN of space wherein to evaluate expressions     default: '#'
⍝   IN indent          rank offset for format                           default: 2
⍝ Use: ... ##.reset 0 ⍝ to return all values to their defaults.
⍝ Phil Last 2016-01-06
 }
