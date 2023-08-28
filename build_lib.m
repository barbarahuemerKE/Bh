model= 'simulink';
open_system(model)
cs = getActiveConfigSet(model);
%openDialog(cs);
slbuild(model); %,'ModelReferenceCoderTarget'
