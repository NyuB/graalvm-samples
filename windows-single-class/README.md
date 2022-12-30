# Compiling

## VisualStudio environment setup

To compile on windows, the native-image command (and thus the compile.bat script) requires the Visual Studio x64 environment. You can either

+ compile from within the VisualStudio Tools x64 command prompt (e.g. "Developer Command Prompt for VsisualStudio2019" in the cmd profiles)

+ directly use VsDevCmd.bat in x64 mode (paths may differ on your machine) ```"C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat" -arch=amd64```

+ use ```vsenv.bat 64``` from https://github.com/ReneNyffenegger/scripts-and-utilities/blob/master/vsenv.bat to locate and use VsDevCmd.bat automatically

## compile script

Use ```compile.bat``` to produce .class, .jar and .exe from Graal.java
Add the skipnative argument to skip the .exe generation ```compile.bat skipnative```