function [ d ] = readTextFile( f )
%READTEXTFILE Summary of this function goes here
%   Detailed explanation goes here
fid = fopen(f, 'r');
t = fgetl(fid); d = [];
while(ischar(t))
    d = [d t];
    t = fgetl(fid);
end

end

