numHITs = 10;
expt = 'external_hit';

questionFile = 'external_hit.question';

params = CreateHITStruct();
turk = turkConfig();
turk.sandbox = true;

params.Title = 'External HIT demo';
params.Description = 'This external HIT has been created using MATLAB! Check out the mturkMatlab toolbox to see how.';

question = readTextFile(questionFile);
question = strrep(question, '{{expt}}', expt);
params.Question = question;

params.Reward.Amount = 0.1;
params.AssignmentDurationInSeconds = 15*60;
params.LifetimeInSeconds = 60*60*24*3;
params.Keywords = 'external, hit, mturkMatlab';
results = cell(numHITs, 1);

for i=1:numHITs
    disp(['Creating HIT ' num2str(i) ' of ' num2str(numHITs)]);
    results{i} = CreateHIT(turk, params);
end
