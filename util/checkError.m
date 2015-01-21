function [found_error, error_code] = checkError(result, params, turk)
found_error = 0;
if(strcmp(result.Request.IsValid, 'False'))
    found_error = 1; error_code = result.Request.Errors;
end

if(turk.print_errors && found_error)
    disp('-------------- ERROR START --------------');
    disp(['Operation: ' params.Operation ', code: ' result.Request.Errors.Error.Code]);
    disp(['Message: ' result.Request.Errors.Error.Message]);
    disp('-------------- ERROR DONE --------------');
end
