function [s] = GetFileUploadURLStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_GetFileUploadURLOperation.html

s.Operation = 'GetFileUploadURL';
s.AssignmentId = '';
s.QuestionIdentifier = '';
s.Required = {'Operation', 'AssignmentId', 'QuestionIdentifier'};