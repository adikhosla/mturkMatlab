function [result] = GetBonusPayments(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);