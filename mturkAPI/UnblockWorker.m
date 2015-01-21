function [result] = UnblockWorker(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);