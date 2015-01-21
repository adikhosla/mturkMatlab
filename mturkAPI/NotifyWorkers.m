function [result] = NotifyWorkers(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);