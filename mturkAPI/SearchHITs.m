function [result] = SearchHITs(turk, params)
params = checkRequired(params);
result = RequestTurk(turk, params);

if(strcmp(result.Request.IsValid, 'True'))
    r = result;
    while(str2double(result.NumResults)<str2double(result.TotalNumResults))
        params.PageNumber = str2double(r.PageNumber)+1;
        r = RequestTurk(turk, params);
				new_fields = setdiff(fields(r.HIT), fields(result.HIT));
				for i=1:length(new_fields)
					for j=1:length(result.HIT), result.HIT(j).(new_fields{i}) = []; end
				end

        new_fields = setdiff(fields(result.HIT), fields(r.HIT));
        for i=1:length(new_fields)
          for j=1:length(r.HIT), r.HIT(j).(new_fields{i}) = []; end
        end
        
				result.HIT = [result.HIT; r.HIT];
        result.NumResults = num2str(str2double(result.NumResults)+str2double(r.NumResults));
    end
end

