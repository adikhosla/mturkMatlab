function [] = make_dir(folder)

if(~exist(folder, 'dir'))
    mkdir(folder);
end