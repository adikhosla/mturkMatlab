function [c] = convertToCell(s, issoap, base, k)

if(~exist('base', 'var'))
    base = '';
end

if(exist('k', 'var'))
    base = [base '.' num2str(k) '.'];
end

if(isfield(s, 'Required'))
    s = rmfield(s, 'Required');
end
f = fieldnames(s);
c = cell(1, length(f)*2);
idx = 1;

for i=1:length(f)
    v = s.(f{i});
    if(iscell(v))
        for j=1:length(v)
            c2 = convertToCell(v{j},issoap,f{i},j);
            c(idx:idx+length(c2)-1) = c2;
            idx = idx + length(c2);
        end
    else
        if(isvalid(v))
            c{idx}=[base f{i}]; idx = idx + 1;
            if(isnumeric(v)), v=num2str(v); end
            if(~issoap), c{idx}=strrep(urlencode(v), '+', '%20');
            else
                if(isstruct(v)), c{idx} = v; 
                else c{idx} = strrep(strrep(strrep(v, '&', '&amp;'),'<','&lt;'), '>', '&gt;'); end; 
            end
            idx = idx + 1;
        end
    end
end

c(idx:end) = [];