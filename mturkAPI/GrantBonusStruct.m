function [s] = GrantBonusStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GrantBonusOperation.html

s.Operation = 'GrantBonus';
s.WorkerId = '';
s.AssignmentId = '';
s.BonusAmount.Amount = -1;
s.BonusAmount.CurrencyCode = 'USD';
s.Reason = '';
s.UniqueRequestToken = '';
s.Required = {'Operation', 'WorkerId', 'AssignmentId', 'BonusAmount', 'Reason'};