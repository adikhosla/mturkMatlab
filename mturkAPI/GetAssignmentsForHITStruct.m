function [s] = GetAssignmentsForHITStruct(s2)
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetAssignmentsForHITOperation.html

s.Operation = 'GetAssignmentsForHIT';
s.HITId = '';
s.AssignmentStatus = '';
s.SortProperty = '';
s.SortDirection = '';
s.PageSize = -1;
s.PageNumber = -1;
s.Required = {'Operation', 'HITId'};

if(exist('s2', 'var') && ~isempty(s2)), s = populateCommonFields(s, s2); end