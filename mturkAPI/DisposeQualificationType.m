function [result] = DisposeQualificationType(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);