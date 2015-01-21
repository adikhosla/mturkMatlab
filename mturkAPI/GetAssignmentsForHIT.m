function [result] = GetAssignmentsForHIT(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);