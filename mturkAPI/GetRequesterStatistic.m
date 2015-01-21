function [result] = GetRequesterStatistic(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);