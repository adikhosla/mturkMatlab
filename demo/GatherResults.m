turk = turkConfig();
turk.sandbox = true;

resultsFolder = 'results/'; make_dir(resultsFolder);

hits_param = GetReviewableHITsStruct();
hits_param.PageSize = 100;
hits = GetReviewableHITs(turk, hits_param);

hits = hits.HIT;
alldata = cell(length(hits), 1);
assignments = cell(length(hits), 1);

for i=1:length(hits)
    HITFile = [resultsFolder '/' hits(i).HITId '.mat'];
    
    if(~exist(HITFile, 'file'))
        assignment = GetAssignmentsForHIT(turk, GetAssignmentsForHITStruct(hits(i)));
        data = parseMemorabilityAssignment(assignment);
        save(HITFile, 'assignment', 'data');
    else
        tmp = load(HITFile, 'data', 'assignment');
        data = tmp.data;
				assignment = tmp.assignment;
    end
    alldata{i} = data;
		assignments{i} = assignment;
end
