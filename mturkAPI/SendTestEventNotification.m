function [result] = SendTestEventNotification(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);