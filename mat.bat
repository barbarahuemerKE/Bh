SET MATLABROOT="C:\Program Files\MATLAB\R2023a"
PATH=%MATLABROOT%;%PATH%
START matlab.exe -batch myFilesToBuild %1 -logfile c:\temp\logfile
PAUSE