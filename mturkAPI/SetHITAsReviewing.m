function [result] = SetHITAsReviewing(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);