setlocal enabledelayedexpansion
SET MATLABROOT="C:/Program Files/MATLAB/R2023a"
PATH=%MATLABROOT%;%PATH%
matlab -nosplash -noFigureWindows -wait -r "try; run('C:/ProgramData/Jenkins/.jenkins/workspace/simulink/build_lib.m'); catch; end; quit"
        
