function plan = buildfile
plan = buildplan(localfunctions);
plan.DefaultTasks = "helloworld";
%plan("archive").Dependencies = ["check" "test"];
end

function helloworld(~)
    fprintf('\n=============')
    fprintf('\nHello, World!\n')
    fprintf('=============\n')
end

%{
function checkTask(~)
% Identify code issues
issues = codeIssues;
assert(isempty(issues.Issues),formattedDisplayText( ...
    issues.Issues(:,["Location" "Severity" "Description"])))
end
%}
%{
function testTask(~)
% Run unit tests
results = runtests(IncludeSubfolders=true,OutputDetail="terse");
assertSuccess(results);
end
%}
%{
function archiveTask(~)
% Create ZIP file
zipFileName = "source_" + ...
    string(datetime("now",Format="yyyyMMdd'T'HHmmss"));
zip(zipFileName,"*")
end
%}
