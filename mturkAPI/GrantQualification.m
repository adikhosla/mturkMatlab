function [result] = GrantQualification(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);