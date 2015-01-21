function result = RequestTurk(turk, params)

operation = params.Operation;
timestamp = UTCtimestamp();
signature = HMACencode(['AWSMechanicalTurkRequester', operation, timestamp], turk.aws_secret_key);
params = cleanStruct(params);

paramsCell = ...
{'AWSAccessKeyId',turk.aws_access_key, ...
 'Signature',signature, ...
 'Timestamp',timestamp, 'Request', params};

if turk.sandbox
    service_url='https://mechanicalturk.sandbox.amazonaws.com/?Service=AWSMechanicalTurkRequester';
else
    service_url='https://mechanicalturk.amazonaws.com/?Service=AWSMechanicalTurkRequester';
end

paramTypes = arrayfun(@(x) '{http://www.w3.org/2001/XMLSchema}string', 1:length(paramsCell)/2, 'UniformOutput', false);
soapMessage = createSoapMessage('http://requester.mturk.amazonaws.com/doc/2012-03-25', operation, ...
    paramsCell(2:2:end), paramsCell(1:2:end), paramTypes,'document');
response = callSoapService(service_url, 'http://soap.amazon.com', soapMessage);
[~, result] = parseSoapResponse(response);

if(checkError(result, params, turk) && turk.num_retry>0)
    turk.num_retry = turk.num_retry-1;
    disp(['Retrying in ' num2str(turk.retry_pause) ' seconds...']);
    pause(turk.retry_pause);
    result = RequestTurk(turk, params);
end