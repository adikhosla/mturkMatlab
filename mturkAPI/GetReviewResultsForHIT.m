function [result] = GetReviewResultsForHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);