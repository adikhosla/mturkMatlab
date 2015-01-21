function [result] = UpdateQualificationScore(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);