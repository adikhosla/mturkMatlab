function [s] = populateCommonFields(s, s2)
f = intersect(fieldnames(s), fieldnames(s2));
for i=1:length(f)
    s.(f{i}) = s2.(f{i});
end