function [result] = ChangeHITTypeOfHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);