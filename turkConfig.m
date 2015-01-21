function [turk] = turkConfig()
addpath mturkMatlab/;

aws_access_key = '';
aws_secret_key = '';
sandbox = true;

turk = InitializeTurk(aws_access_key, aws_secret_key, sandbox);
turk.assignmentsFolder = 'assignments/';
if(~exist(turk.assignmentsFolder, 'dir')), mkdir(turk.assignmentsFolder); end
