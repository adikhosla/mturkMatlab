function [result] = RevokeQualification(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);