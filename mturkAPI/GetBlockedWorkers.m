function [result] = GetBlockedWorkers(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);