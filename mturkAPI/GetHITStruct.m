function [s] = GetHITStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetHITOperation.html

s.Operation = 'GetHIT';
s.HITId = '';
s.Required = {'Operation', 'HITId'};