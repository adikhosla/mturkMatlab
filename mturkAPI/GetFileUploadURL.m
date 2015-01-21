function [result] = GetFileUploadURL(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);