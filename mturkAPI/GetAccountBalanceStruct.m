function [s] = GetAccountBalanceStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetAccountBalanceOperation.html

s.Operation = 'GetAccountBalance';
s.Required = {'Operation'};