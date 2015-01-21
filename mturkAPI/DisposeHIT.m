function [result] = DisposeHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);