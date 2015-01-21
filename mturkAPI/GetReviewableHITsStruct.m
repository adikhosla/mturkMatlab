function [s] = GetReviewableHITsStruct(s2)
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetReviewableHITsOperation.html

s.Operation = 'GetReviewableHITs';
s.HITTypeId = '';
s.Status = '';
s.SortProperty = '';
s.SortDirection = '';
s.PageSize = -1;
s.PageNumber = -1;
s.Required = {'Operation'};

if(exist('s2', 'var') && ~isempty(s2)), s = populateCommonFields(s, s2); end