function [result] = GetReviewableHITs(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);

if(strcmp(result.Request.IsValid, 'True'))
    r = result;
    while(str2double(result.NumResults)<str2double(result.TotalNumResults))
        params.PageNumber = str2double(r.PageNumber)+1;
        r = RequestTurk(turk, params);
        result.HIT = [result.HIT; r.HIT];
        result.NumResults = num2str(str2double(result.NumResults)+str2double(r.NumResults));
    end
end