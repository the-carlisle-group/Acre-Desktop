:List reallyImportant
Acre-desktop projects will be incompatible with acre-3 projects.

It might not be possible to have both acre-3 and acre-desktop installed
simultaneously although moving aside the installed acre folder of one and 
installing the other will make further switches merely a matter of 
switching folders.

To convert a project from acre-3 to acre-desktop it will be necessary to: 
]Load the project with acre-3; 
)Save the ws; 
copy the folder with its project files to a new location, erasing the .acre 
folder; 
swap in acre-desktop; 
)Copy the ws; 
]CreateProject at the new location.

It will NOT be possible, at least initially and probably ever, to move 
changefiles in and out of the change folder without compromising the 
project's integrity.

To introduce a function from one to another project, copy the source file 
from the one and ]OpenProject the other.

To remove all changes to an item ]Undo until "No change" is shown.

]Undo and ]Redo are non-destructive. In consequence an edit change, internal
or external, resets the undo/redo pointer to the new change such that a 
subsequent ]Undo will reveal the previous if any edit, not necessarily the 
edit that was current before the change and ]Redo will display "No change".

CreateProject folderpath [spacepath]
    Not if any of config, source and codefile exists
    Create folder if missing
    ProjectName is foldername
    ProjectSpace is '#.',foldername unless spacepath is specified
    Write ProjectName and ProjectSpace to /acre.config
    Create ProjectSpace if missing
    Get names and values from space                       getValues
    Write to sourcetree under /APLsource/                 putSource
    Write metadata of sourcefiles to /.acre/sourcereg     ditto & getSource
    Write to /.acre/codefile                              putCode

OpenProject folderpath [spacepath]
    Not if none of config, source and codefile exists
    If ProjectName and ProjectSpace specifed by config are as specified
    Else derived as ]Createproject
    For duration of session ProjectSpace is spacepath if specified
    Write missing of config, source and codefile
    Read sourcetree                                       getSource
    Add new and changed to changefiles                    putChanged
    ]Erase missing                                        ditto as .DEL
    Read codefile                                         getCode
    Merge changes and remove deletions from fqn-value pairs
    Fix values                                            fixValues

Undo
    pointer is in last component
    decrement pointer to max first componenent            undoredo

Redo
    pointer is in last component
    increment pointer to min penultimate component        undoredo

Erase
    Save ".DEL" as a change value. Rename file from .CHG to .DEL
    Expunge from ws

Restore
    Remove last component from .DEL file
    If single component, erase file 
    Replace new last with previous component number
    Rename to .CHG
    Refix in ws

Consolidate
    Apply all changes and deletions to codefile
    Remove change- and delete-files                       non-reversible
:End
