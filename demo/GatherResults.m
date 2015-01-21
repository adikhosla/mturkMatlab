turk = config();
turk.sandbox = false;

resultsFolder = 'results/faces_modify/'; make_dir(resultsFolder);
%allHITsFolder = [resultsFolder '/allHITs/']; make_dir(allHITsFolder);

hits_param = GetReviewableHITsStruct();
hits_param.PageSize = 100;
hits = GetReviewableHITs(turk, hits_param);

hits = hits.HIT;
alldata = cell(length(hits), 1);
assignments = cell(length(hits), 1);

parfor i=1:length(hits)
    HITFile = [resultsFolder '/' hits(i).HITId '.mat'];
    
    if(~exist(HITFile, 'file'))
        assignment = GetAssignmentsForHIT(turk, GetAssignmentsForHITStruct(hits(i)));
        data = parseMemorabilityAssignment(assignment);
        parsave(HITFile, assignment, data);
    else
        tmp = load(HITFile, 'data', 'assignment');
        data = tmp.data;
				assignment = tmp.assignment;
    end
    alldata{i} = data;
		assignments{i} = assignment;
end
