function [result] = RejectQualificationRequest(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);