function [s] = CreateHITStruct()
% For more information:
% http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_CreateHITOperation.html

s.Operation = 'CreateHIT';
s.Title = '';
s.Description = '';
s.Question = '';
s.HITLayoutId = '';
s.HITLayoutParameter = '';
s.Reward.Amount = -1;
s.Reward.CurrencyCode = 'USD';
s.AssignmentDurationInSeconds = -1;
s.LifetimeInSeconds = -1;
s.Keywords = '';
s.MaxAssignments = -1;
s.AutoApprovalDelayInSeconds = -1;
s.QualificationRequirement = '';
s.Required = {'Operation', 'Title', 'Description', 'Reward', 'AssignmentDurationInSeconds', 'LifetimeInSeconds', 'Question'};
