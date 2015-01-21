function [s] = CreateQualificationTypeStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_CreateQualificationTypeOperation.html

s.Operation = 'CreateQualificationType';
s.Name = '';
s.Description = '';
s.Keywords = '';
s.RetryDelayInSeconds = -1;
s.QualificationTypeStatus = '';
s.Test = '';
s.AnswerKey = '';
s.TestDurationInSeconds = -1;
s.AutoGranted = -1;
s.AutoGrantedValue = -1;
s.Required = {'Operation', 'Name', 'Description', 'QualificationTypeStatus'};