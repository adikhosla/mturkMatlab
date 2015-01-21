function [s] = SearchHITsStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_SearchHITsOperation.html

s.Operation = 'SearchHITs';
s.SortProperty = '';
s.SortDirection = '';
s.PageSize = 100;
s.PageNumber = -1;
s.Required = {'Operation'};
