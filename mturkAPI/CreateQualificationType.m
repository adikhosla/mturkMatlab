function [result] = CreateQualificationType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);