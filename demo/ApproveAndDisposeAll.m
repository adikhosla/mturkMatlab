function ApproveAndDisposeAll(turk)
r = SearchHITs(turk, SearchHITsStruct());

if(isfield(r, 'HIT'))
    for i=1:length(r.HIT)
        r2 = GetAssignmentsForHIT(turk, GetAssignmentsForHITStruct(r.HIT(i)));
        if(isfield(r2, 'Assignment'))
            for j=1:length(r2.Assignment)
                assignment = r2.Assignment(j);
                save([turk.assignmentsFolder '/' assignment.AssignmentId '.mat'], 'assignment');
								params = ApproveAssignmentStruct(assignment);
								params.RequesterFeedback = 'Thank you for your participation in our HITs! We appreciate your hard work.';
                ApproveAssignment(turk, params);
            end
        end
				%ForceExpireHIT(turk, ForceExpireHITStruct(r.HIT(i)));
        %DisableHIT(turk, DisableHITStruct(r.HIT(i)));
				DisposeHIT(turk, DisposeHITStruct(r.HIT(i)));
    end
end
