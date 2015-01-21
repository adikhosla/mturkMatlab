function [result] = RejectAssignment(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);