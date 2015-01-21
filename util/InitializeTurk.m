function turk = InitializeTurk(aws_access_key, aws_secret_key, sandbox)

if ~exist('sandbox','var')
    sandbox = true;
end

turk.aws_access_key = aws_access_key;
turk.aws_secret_key = aws_secret_key;
turk.sandbox = sandbox;
turk.print_errors = true;
turk.num_retry = 3;
turk.retry_pause = 1;
turk.auto_manage = 1;