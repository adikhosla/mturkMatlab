function [result] = ApproveAssignment(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);