function [result] = GetQualificationRequests(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);