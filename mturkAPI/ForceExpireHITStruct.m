function [s] = ForceExpireHITStruct(s2)
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_ForceExpireHITOperation.html

s.Operation = 'ForceExpireHIT';
s.HITId = '';
s.Required = {'Operation', 'HITId'};

if(exist('s2', 'var') && ~isempty(s2)), s = populateCommonFields(s, s2); end
