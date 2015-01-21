function [result] = CreateHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);