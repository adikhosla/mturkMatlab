function [result] = GetAssignment(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);