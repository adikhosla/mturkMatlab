function [s] = GetBlockedWorkersStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetBlockedWorkersOperation.html

s.Operation = 'GetBlockedWorkers';
s.PageNumber = -1;
s.PageSize = -1;
s.Required = {'Operation'};