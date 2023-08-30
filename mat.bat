setlocal enabledelayedexpansion
SET MATLABROOT="C:\Program Files\MATLAB\R2023a"
PATH=%MATLABROOT%;%PATH%
START call C:\Program Files\MATLAB\R2023a\bin\matlab.exe -batch "build_lib" %1 -logfile c:\temp\logfile
PAUSE
