#  ![](./images/logo/logo32.png) Acre Desktop


## Introduction

Acre Desktop is an enhancement to the Dyalog APL IDE, delivered as a small set of user commands,
that introduces the concept of a **project**, and stores code outside the workspace in plain text files.

It makes working with 3rd party source code management (SCM) systems like Git easy.

However, while one of  Acre Desktop’s main purposes is to facilitate SCM using text files,
it has tremendous value as a simple addition to the IDE, eliminating many of the downsides of workspaces,
while keeping all of the benefits.


## Installation

Acre Desktop is distributed as a compressed folder that contains a folder named acre.  Dyalog APL 14.0 Unicode is the minimum supported version of Dyalog APL.

To install, [download](https://github.com/the-carlisle-group/Acre-Desktop/releases/latest) the acre zip file (currently called *"acre14.0.zip"*) from the latest release, uncompress, and put the acre folder anywhere.
Inside this folder is a workspace named acre.dws.
Load this workspace once, and restart the APL session.
Acre Desktop is now installed as a set of user commands.  


## The Project

Acre Desktop introduces to the IDE the concept of a project.
In the workspace, a project is represented by a namespace. This is called the **project space**.

On disk, a project is represented by a folder. This is called the **project folder**.
A project is created from an existing namespace using the CreateProject command. For example:

~~~APL
]acre.CreateProject c:/Projects/MyProject #.MyProject
~~~

This writes out the all of the code in the namespace #.MyProject into the folder c:/Projects/MyProject. 
An existing project is opened using the OpenProject command:

~~~APL
]acre.OpenProject   c:/Projects/MyProject
~~~

This instantiates the namespace #.MyProject back into the workspace.
Thus, the project folder knows its associated project namespace.
However, a project may be instantiated in any namespace by specifying an additional parameter to the OpenProject command:

~~~APL
]acre.OpenProject c:/Projects/MyProject #.MyCompany.MyProject
~~~

Items (functions, operators, classes, variables, etc.) in an open project are added and edited using the IDE as one normally would.

Acre Desktop saves all changes. There is no concept of saving a project.  The traditional system command )SAVE is not used.

A typical work session thus involves starting up the interpreter, opening one or more projects, editing and creating items and then )OFF.

By default Opening a project brings the project code into the workspace and tells AcreDesktop to monitor the project however
a project may also be opened with the `-track=off` option:

~~~APL
]acre.OpenProject   c:/Projects/MyProject -track=off
~~~

This brings the code into the workspace, but Acre Desktop does not monitor it.


## Project Internals

A project folder can have any number of arbitrary files or folders in it. 
However, there are two folder names and one file name that Acre Desktop reserves.

The first reserved folder is named **APLSource.** This folder contains the APL source code in text files,
in a folder hierarchy mirroring the project namespace structure.
You can create this folder yourself, and populate it with text files that contain the source for APL items.
Most of the time, however, this folder is created for you by the CreateProject command.

The second reserved folder is **.acre**. This folder contains Acre Desktop related stuff. In general, there are no user serviceable parts in this folder, and you cannot create it yourself.

The reserved file is **acre.config**. This is a text file (JSON, scripted namespace or APLAN),
that contains configuration parameters for the project. This file is created for you when the CreateProject command is used to create the project, but it is easy to create it by hand.

Thus it is simple to create a project outside of the Dyalog IDE and Acre Desktop if you so choose. 
Simply create a folder for your project, create a sub folder named APLSource, and populate with source code text files.


## The APLSource Folder

The APLSource folder contains the APL Source code. 
Each APL item, be it a class, namespace script, function or variable, is in a UTF-8 encoded text file
with one of ten or so specific filetypes, in a folder hierarchy that mimics the namespace structure.

### Casing

APL names are case sensitive while some operating file systems are not, causing potentially a conflict.
By default acre assumes that the programmer will avoid such conflicts.

However, acre is capable of ensuring that, say, `Foo` and `foo` are considered to be different names even under Windows. For that to work you need to specify `CaseCode=on`.
folder and file names are tagged by Acre Desktop with a **case-code**.

In general, case-codes can be ignored by the programmer, but for details see the wiki page for 
[Item Names and File Names](https://github.com/the-carlisle-group/Acre-Desktop/wiki/Item-Names-and-File-Names)


## The Acre Config File

This text file contains acre parameters specific to the project. For example:

~~~JSON
{
      "ProjectSpace": "#.Carlisle.FlipDB",
      "Dependencies": ["Rumba", "Utilities"],
      "StartUp": "Initialize",
      "KeepHistory": "Off",
      "CaseCode": "Off",
      "AfterFix": "",
      "MyCustomField": "possibly required by ancillary software"
}
~~~

Note that in this example...

* the values for `KeepHistory" and "CaseCode" are the default ("off").
* the other values (except "MyCustomField" of course) are optional and if specified may be empty.

### Remarks

* **"ProjectSpace"**

  This is the namespace for the project code.

  If not present, this defaults to a root level namespace named for last node of the project folder. 
  For example, if the project folder is C:\CarlisleGroup\FlipDB, the default project space is `#.FlipDB`. 

* **"Dependencies"**

  This is a list of additional projects to be opened. 

  An item is either the project folder alone or a project folder and a project space. 
  "Dependencies" defines _included_ projects.

  In the example "Rumba" and "Utilities" refer to sibling folders of the current project.

* **"StartUp"**

  This is an expression to be executed in the project namespace after the project and all of the _included_ projects (if any) are available. 
