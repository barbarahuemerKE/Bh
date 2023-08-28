function codegeneration
    fprintf('HelloWorld1');
    cfg = Simulink.fileGenControl('getConfig');
    cfg.CacheFolder = fullfile('C:\ProgramData\Jenkins\.jenkins\workspace\simulink','generatedCache');
    cfg.CodeGenFolder = fullfile('C:\ProgramData\Jenkins\.jenkins\workspace\simulink','generatedCode');
    Simulink.fileGenControl('setConfig', 'config', cfg,'createDir',true);
    
    fprintf('HelloWorld2');
    model= 'simulink';
    open_system(model)
    fprintf('HelloWorld3');
    cs = getActiveConfigSet(model);
    %openDialog(cs);
    slbuild(model); %,'ModelReferenceCoderTarget'
end
