:List help
APL Array Notation

APL Array Notation (APLAN) is essentially APL code syntax including
nested array (or strand) notation but with a relaxation that permits
unquoted line-ends or diamonds within square brackets thus:
   [
     ]
or
   [⋄]

"Broken" bracket pairs thus formed denote and delimit either arrays
of rank-two or higher; or name-spaces.

If no expression within the brackets results in an assignment
then an array is defined.
Within an array definition each expression defines a major cell
of at least rank-one.
The rank of the resultant array has rank one greater than that of the
major cells all of which are augmented with leading unit dimensions to
that of the greatest where necessary.
Within an array any item may be a space or an array.

If every expression within the brackets results in an assignment
then a name-space is defined.
Within a space definition each expression defines a member.
Within a space any member may be an array or a space.
Within a space definition non-assigned expressions are not permitted.

Almost all arrays and spaces can be formatted as APLAN reversibly in
that decoding the result produces an identical clone of the original.
Exceptions are results of ⎕OR which cannot be encoded; scripted spaces
and classes; cross-referenced spaces; and other spaces that contain
operations: fns, ops and dervs among their members of which only the
arrays and subspaces are encoded in the current implementation.

Functions in this model:
  amend   - format, edit, decode & return amended clone of array or space.
  decode  - evaluate APLAN as an an array or space.
  encode  - convert an array or space to a diamond separated line of APLAN.
  format  - encode adding indentation and line-ends in place of diamonds.
  help    - this array.
  reset   - set all OPTIONS to their defaults.
  session - indent, await input, decode, format and output iteratively.
  value   - decode APLAN embedded in a dfn.
⍝ Phil Last 2017-09-25 12.06
:End
