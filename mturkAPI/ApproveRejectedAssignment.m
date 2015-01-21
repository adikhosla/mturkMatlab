function [result] = ApproveRejectedAssignment(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);