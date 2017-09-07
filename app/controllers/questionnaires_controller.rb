class QuestionnairesController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update, :show, :index]
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  before_action :check_correct_user, only: [:edit, :update]

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
    @questionnaire = Questionnaire.find(params[:id])
    if @questionnaire.update_attributes(questionnaire_params)
      flash[:success] = "preference updated"
       render 'index'
       
    else
      render 'edit'
    end
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

    def check_correct_user
      if current_user != @questionnaire.user
        flash[:danger] = "Bad boy!"
        redirect_to questionnaires_path
      end
    end
end
