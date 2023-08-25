%load simulink.mat
oldpath = path; %retrieve matlab searchpath
path(oldpath,'C:\ProgramData\Jenkins\.jenkins\workspace') %copys jenkins workspace in the Mathlab searchpath.

cfg = Simulink.fileGenControl('getConfig');
cfg.CacheFolder = fullfile(eval(['O:\github\generatedCache']),'generatedCache');
cfg.CodeGenFolder = fullfile(eval(['O:\github\generatedCode']),'generatedCode');
Simulink.fileGenControl('setConfig', 'config', cfg,'createDir',true);
codegen -report -config:lib simulink.m %-args {x, cb}
path(oldpath) %restores initial path
