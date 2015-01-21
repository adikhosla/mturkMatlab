function [result] = ForceExpireHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);