function [result] = SearchQualificationTypes(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);