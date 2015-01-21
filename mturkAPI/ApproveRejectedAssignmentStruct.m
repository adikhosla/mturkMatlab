function [s] = ApproveRejectedAssignmentStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_ApproveRejectedAssignmentOperation.html

s.Operation = 'ApproveRejectedAssignment';
s.AssignmentId = '';
s.RequesterFeedback = '';
s.Required = {'Operation', 'AssignmentId'};