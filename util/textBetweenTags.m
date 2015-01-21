function [t] = textBetweenTags(t, start_tag, end_tag)
t = t(min(strfind(t, start_tag))+length(start_tag):end);
t = t(1:min(strfind(t, end_tag))-1);
