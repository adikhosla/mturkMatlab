function [result] = GrantBonus(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);