:List readMe
Installation of acre 3.

Unzip the supplied file into a temporary location. You will find a single 
folder. 

If no version of acre 3 is installed, copy or move the supplied folder to 
your chosen location. 
)LOAD the supplied workspace within.
The folder will be registered as a source for user commands.
You are advised to start a new session to use acre.

To install into a version of acre 3 prior to 3.1.3 copy the contents of the
supplied folder to the already installed folder and )LOAD the supplied 
workspace within.
The installed folder will be re-registered as a source for user commands.
You are advised to start a new session to use acre.

To install into a version of acre after 3.1.3 run the command
      ]acre.update path
where path is the path to the supplied folder. Path must be quoted if it 
contains any blank or left bracket.
The updated, already installed folder will be re-registered as a source for 
user commands.
You are advised to start a new session to use acre.

To uninstall acre run the command 
      ]acre.Uninstall 
that, after confirmation, de-registers acre as a source for user commands. 
Neither the acre folder nor project folders are deleted or changed in any 
way. As acre does not reside in the saved ⎕SE then no remaining user 
command will introduce it. To re-install, merely )LOAD the workspace in the 
folder as above.

⍝ Phil Last 2017-06-20 11.27
:End
