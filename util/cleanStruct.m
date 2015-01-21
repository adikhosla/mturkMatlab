function [s] = cleanStruct(s)
f = fieldnames(s);
for i=1:length(f)
    v=s.(f{i});
    if(~isvalid(v)), s=rmfield(s, f{i}); continue; end
    if(isstruct(v)), v=cleanStruct(v);
    elseif(isnumeric(v)), v=num2str(v);
    end
    s.(f{i}) = v;
end