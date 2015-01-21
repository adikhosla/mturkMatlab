function [result] = RegisterHITType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);