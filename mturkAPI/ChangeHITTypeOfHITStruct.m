function [s] = ChangeHITTypeOfHITStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_ChangeHITTypeOfHITOperation.html

s.Operation = 'ChangeHITTypeOfHIT';
s.HITId = '';
s.HITTypeId = '';
s.Required = {'Operation', 'HITId', 'HITTypeId'};