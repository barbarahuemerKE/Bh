function codegeneration
    cfg = Simulink.fileGenControl('getConfig'); %specify the current working directory, create two folders 'generatedCache' and 'generatedCode' in the current directory, and set these as the target folders for all code generation.
    cfg.CacheFolder = fullfile('C:\ProgramData\Jenkins\.jenkins\workspace\simulink','generatedCache');
    cfg.CodeGenFolder = fullfile('C:\ProgramData\Jenkins\.jenkins\workspace\simulink','generatedCode');
    Simulink.fileGenControl('setConfig', 'config', cfg,'createDir',true);
    
    model= 'simulink';
    open_system(model)
    cs = getActiveConfigSet(model);
    %openDialog(cs);
    slbuild(model); 
end
