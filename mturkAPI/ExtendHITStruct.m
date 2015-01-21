function [s] = ExtendHITStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_ExtendHITOperation.html

s.Operation = 'ExtendHIT';
s.HITId = '';
s.MaxAssignmentsIncrement = -1;
s.ExpirationIncrementInSeconds = -1;
s.UniqueRequestToken = '';
s.Required = {'Operation', 'HITId'};