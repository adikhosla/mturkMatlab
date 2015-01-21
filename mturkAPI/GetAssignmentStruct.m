function [s] = GetAssignmentStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetAssignmentOperation.html

s.Operation = 'GetAssignment';
s.AssignmentId = '';
s.Required = {'Operation', 'AssignmentId'};