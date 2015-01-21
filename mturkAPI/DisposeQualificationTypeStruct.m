function [s] = DisposeQualificationTypeStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_DisposeQualificationTypeOperation.html

s.Operation = 'DisposeQualificationType';
s.QualificationTypeId = '';
s.Required = {'Operation', 'QualificationTypeId'};