class QuestonnairesController < ApplicationController
  before_action :set_questonnaire, only: [:show, :edit, :update, :destroy]

  # GET /questonnaires
  # GET /questonnaires.json
  def index
    @questonnaires = Questonnaire.all
  end

  # GET /questonnaires/1
  # GET /questonnaires/1.json
  def show
  end

  # GET /questonnaires/new
  def new
    @questonnaire = Questonnaire.new
  end

  # GET /questonnaires/1/edit
  def edit
  end

  # POST /questonnaires
  # POST /questonnaires.json
  def create
    @questonnaire = Questonnaire.new(questonnaire_params)

  end

  # PATCH/PUT /questonnaires/1
  # PATCH/PUT /questonnaires/1.json
  def update
  
  end

  # DELETE /questonnaires/1
  # DELETE /questonnaires/1.json
  def destroy
    @questonnaire.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questonnaire
      @questonnaire = Questonnaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questonnaire_params
      params.fetch(:questonnaire, {})
    end
end
