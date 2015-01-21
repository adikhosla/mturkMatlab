function [s] = GetBonusPaymentsStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetBonusPaymentsOperation.html

s.Operation = 'GetBonusPayments';
s.HITId = '';
s.AssignmentId = '';
s.PageNumber = -1;
s.PageSize = -1;
s.Required = {'Operation', {'HITId', 'AssignmentId'}};