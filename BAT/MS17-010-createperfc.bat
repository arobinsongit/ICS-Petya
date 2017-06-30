REM This is a quick and dirty method for creating the three perfc files and then setting them to read-only.  Only lightly tested on Windows XP SP2
REM You must run these commands or this batch file as an administrator

NUL > c:\windows\perfc
NUL > c:\windows\perfc.dll
NUL > c:\windows\perfc.dat

ATTRIB +R c:\windows\perfc
ATTRIB +R c:\windows\perfc.dll
ATTRIB +R c:\windows\perfc.dat

dir c:\windows\perfc*.*
