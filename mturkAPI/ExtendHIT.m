function [result] = ExtendHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);