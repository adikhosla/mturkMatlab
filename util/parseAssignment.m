function [data] = parseAssignment(a)

answer = parseXMLstring(a.Assignment.Answer);
    
a1 = answer.QuestionFormAnswers.Answer;
for j=1:length(a1)
    data.(a1{j}.QuestionIdentifier.Text) = a1{j}.FreeText.Text;
end

