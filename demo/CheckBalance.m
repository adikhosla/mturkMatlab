addpath mturkMatlab/;
% get access key from
% from: https://aws-portal.amazon.com/gp/aws/developer/account/index.html?ie=UTF8&action=access-key

% operation list from:
% http://docs.amazonwebservices.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_OperationsArticle.html

aws_access_key = '';
aws_secret_key = '';
sandbox = false;

turk = InitializeTurk(aws_access_key, aws_secret_key, sandbox);
[result, found_error, balance] = GetAccountBalance(turk, GetAccountBalanceStruct());
