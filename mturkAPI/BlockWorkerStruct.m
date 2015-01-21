function [s] = BlockWorkerStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_BlockWorkerOperation.html

s.Operation = 'BlockWorker';
s.WorkerId = '';
s.Reason = '';
s.Required = {'Operation', 'WorkerId', 'Reason'};