function [result] = BlockWorker(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);