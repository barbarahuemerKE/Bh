% Load the test data
%load simulink.mat
% Generate code for euclidean.m with codegen. Use the test data as example input.
codegen -report -config:lib simulink.m %-args {x, cb}