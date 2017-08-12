class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
  end
  
  def show
    @answers = Answer.find(params[:id])
  end
  
  def new
    @answer = Answer.new
  end
  
  def create
    answer1 = params[:answer][:answer1]
    answer2 = params[:answer][:answer2]
    
    questionID = params[:answer][:questionID]
    
    @answer = Answer.new(answer1: answer1, answer2: answer2)
  
    if !@answer.save
      render 'new'
      return
    end
        

    questionnaire = Questionnaire.new(answer_id: @answer.id, question_id: questionID)
    
    if !questionnaire.save
      render 'new'
      return
    end
    
    redirect_to root_url

  end
end
