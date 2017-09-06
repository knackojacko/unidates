class ReportsController < ApplicationController
  
  def index
    @report = Report.all
  end


  def show
    @report = Report.find(params[:id])    
  end


  def new
    @report = Report.new
  end


  def edit
  
  end


  def create

    @report = Report.new(report_params)
    
    if @report.save
      redirect_to @report
    else
      render 'new'
    end

  end


  def update
    @report = Report.find(params[:id])
    if @report.update_attributes(report_params)
      flash[:success] = "preference updated"
       render 'index'
       
    else
      render 'edit'
    end
  end
  
  
  private
  
    def report_params
      params.require(:report).permit(:user_id, :name, :email, :problem, :reported_user_id)
    end
  
end
