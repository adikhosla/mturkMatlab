function [result, found_error, balance] = GetAccountBalance(turk, params)
result = RequestTurk(turk, params);
found_error = checkError(result, params, turk);

if(found_error)
    balance = -1; 
else
    balance = str2double(result.AvailableBalance.Amount);
end