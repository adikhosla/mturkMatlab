function [result] = AssignQualification(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);