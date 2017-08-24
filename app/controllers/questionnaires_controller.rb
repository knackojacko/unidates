class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]


  def index
    @questionnaire = Questionnaire.all
  end


  def show
    @questionnaire = Questionnaire.find(params[:id])    
  end


  def new
    @questionnaire = Questionnaire.new
  end


  def edit
  end


  def create

    @questionnaire = Questionnaire.new(questionnaire_params)
    
    if @questionnaire.save
      redirect_to @questionnaire
    else
      render 'new'
    end

  end


  def update

  end


  def destroy

  end

  private

    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end


    def questionnaire_params
      params.require(:questionnaire).permit(:user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10)
    end
end
