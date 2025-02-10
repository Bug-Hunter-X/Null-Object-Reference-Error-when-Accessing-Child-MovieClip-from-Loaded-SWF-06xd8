# ActionScript 3 Null Object Reference Bug

This repository demonstrates a common ActionScript 3 error: a null object reference when trying to access a child MovieClip from a SWF file loaded using the Loader class.  The bug and its solution are explained below.  This is a typical problem encountered when dynamically loading content into Flash applications.

## Bug Description:
The `bug.as` file contains a function `handleComplete` which handles the complete event of a Loader object. After loading a SWF file, it tries to access a child MovieClip and a property within that child. If this child MovieClip is not found in the loaded SWF, a runtime error occurs because `myChildMC` will be null.

## Solution:
The `bugSolution.as` file provides a corrected version with proper null checks to prevent the runtime error. It uses an `if` condition to check if `myChildMC` is not null before accessing its properties, thus ensuring robust error handling. 

## How to reproduce the bug
1. Compile `bug.as` and ensure that the child movie clip "myChildMC" is missing or misspelled in the loaded swf file.
2. Run the resulting SWF file; you will see an error in the output window indicating a null object reference. 

## How to run the solution
1. Compile `bugSolution.as`
2. Run the resulting SWF file. The output window will display a message that indicates whether the child movie clip was found or not.