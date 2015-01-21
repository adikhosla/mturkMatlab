function [s] = checkRequired(s)
if(isfield(s, 'Required'))
    r = s.Required;
    for i=1:length(r)
        if(iscell(r{i}))
            v = 0; for j=1:length(r{i}), if(isvalid(s.(r{i}{j}))), v=v|1; end; end
            if(v~=1), error([sprintf('At least one field required: %s', r{i}{1}) sprintf(', %s', r{i}{2:end})]); end
        else
            if(~isvalid(s.(r{i})))
                error(['Required field invalid: ' r{i}]);
            end
        end
    end
end
s = rmfield(s, 'Required');