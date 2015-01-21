function [result] = GetRequesterWorkerStatistic(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);