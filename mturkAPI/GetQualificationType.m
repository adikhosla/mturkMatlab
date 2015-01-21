function [result] = GetQualificationType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);