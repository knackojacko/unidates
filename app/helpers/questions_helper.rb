module QuestionsHelper
    def get_question(qID)
        @question = Question.find(qID)
    end
end
