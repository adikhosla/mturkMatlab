function [result] = GetQualificationScore(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);