turk = turkConfig();
[result, found_error, balance] = GetAccountBalance(turk, GetAccountBalanceStruct());

disp(['Your balance is $' num2str(balance)]);
