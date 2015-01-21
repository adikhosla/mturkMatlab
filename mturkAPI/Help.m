function [result] = Help(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);