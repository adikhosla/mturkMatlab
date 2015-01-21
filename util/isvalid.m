function [v] = isvalid(d)
v = 1;

if(isempty(d)), v=0;
elseif(isnumeric(d) && d==-1), v=0;
elseif(isstruct(d)), f=fieldnames(d);
    for i=1:length(f), v=v&isvalid(d.(f{i})); end
end

