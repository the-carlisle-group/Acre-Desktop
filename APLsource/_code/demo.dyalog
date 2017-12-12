:List demo
In ws: #.CAS, #.acre, #.ac (ptr to acre code), #.ut (ptr to acre utils)
ut.li lists numbered nameclass items in a space
ut.tk times a function with one second ticks

      +⌿⎕←,∘≢⌸⎕NC CAS ut.li⍳11 ⍝ tally items in CAS
9.1  553
3.1 6644
2.1  493
3.2 3044
4.1   37
9.4   29
4.2   49
35.2 10849

      ac.CreateProject ut.tk 'C:/Users/Phil/Desktop/MyProjects/CAS'
----+----|----+----|----+----|----+----|----+----|----+----|----+----|-
#.acre._code.[Namespace]

⍝ has created entire project folder with acre.config, codefile and sourcetree

      {⍴⍵.Path}ac.fileTree 'C:/Users/Phil/Desktop/MyProjects/CAS'
10351

      )erase CAS

⍝ open will read from codefile

      ac.OpenProject ut.tk 'C:/Users/Phil/Desktop/MyProjects/CAS'
----+
#.acre._code.[Namespace]

⍝ OS erase /CAS/APLsource folder
⍝ open will recreate from codefile

      )erase CAS

      ac.OpenProject ut.tk 'C:/Users/Phil/Desktop/MyProjects/CAS'
Creating source tree
----+----|----+----|----+----|----+----|----+----|----+----|----+--
#.acre._code.[Namespace]

⍝ OS erase /CAS/.acre folder
⍝ open will recreate from text files

      )erase CAS

      ac.OpenProject ut.tk 'C:/Users/Phil/Desktop/MyProjects/CAS'
Creating code folder
----+----|----+----|----+----|----+----|----+----|----+
#.acre._code.[Namespace]
      )erase CAS

      ac.OpenProject ut.tk 'C:/Users/Phil/Desktop/MyProjects/CAS'
----+-
#.acre._code.[Namespace]
:End
