function [result] = UpdateQualificationType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);