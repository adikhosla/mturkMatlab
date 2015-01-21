function [result] = DisableHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);