function [result] = SetHITTypeNotification(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);