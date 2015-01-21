addpath(genpath('mturkMatlab'));

numHITs = 10;
expt = 'abstract_scenes';

questionFile = 'memorability.question';

params = CreateHITStruct();
turk = config();
turk.sandbox = true;

params.Title = 'Memorability Game';
params.Description = 'Test your memory of face images! $0.30 per 5 minute level. You can do multiple HITs one after another - it is a fun and interesting HIT!';

question = readTextFile(questionFile);
question = strrep(question, '{{expt}}', expt);
params.Question = question;

params.Reward.Amount = 0.3;
params.AssignmentDurationInSeconds = 15*60;
params.LifetimeInSeconds = 60*60*24*3;
params.Keywords = 'memory, game, images, faces';
results = cell(numHITs, 1);

for i=1:numHITs
    disp(['Creating HIT ' num2str(i) ' of ' num2str(numHITs)]);
    results{i} = CreateHIT(turk, params);
end
