function [s] = AssignQualificationStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_AssignQualificationOperation.html

s.Operation = 'AssignQualification';
s.QualificationTypeId = '';
s.WorkerId = '';
s.IntegerValue = -1;
s.SendNotification = -1;
s.Required = {'Operation', 'QualificationTypeId', 'WorkerId'};