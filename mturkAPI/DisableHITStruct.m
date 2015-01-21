function [s] = DisableHITStruct(s2)
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_DisableHITOperation.html

s.Operation = 'DisableHIT';
s.HITId = '';
s.Required = {'Operation', 'HITId'};

if(exist('s2', 'var') && ~isempty(s2)), s = populateCommonFields(s, s2); end
