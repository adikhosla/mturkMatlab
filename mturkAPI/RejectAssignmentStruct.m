function [s] = RejectAssignmentStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_RejectAssignmentOperation.html

s.Operation = 'RejectAssignment';
s.AssignmentId = '';
s.RequesterFeedback = '';
s.Required = {'Operation', 'AssignmentId'};