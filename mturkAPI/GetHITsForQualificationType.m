function [result] = GetHITsForQualificationType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);