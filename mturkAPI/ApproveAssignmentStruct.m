function [s] = ApproveAssignmentStruct(s2)
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_ApproveAssignmentOperation.html
s.Operation = 'ApproveAssignment';
s.AssignmentId = '';
s.RequesterFeedback = '';
s.Required = {'Operation', 'AssignmentId'};

if(exist('s2', 'var') && ~isempty(s2)), s = populateCommonFields(s, s2); end