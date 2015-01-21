function [result] = GetHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);