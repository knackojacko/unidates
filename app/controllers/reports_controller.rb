class ReportsController < ApplicationController
    before_action :admin_user,   only: [:admin_index]
  
  def index
    @report = Report.where(user_id: current_user.id)
  end


  def show
    @report = Report.find(params[:id])    
  end
  
  def admin_index
    @report = Report.all
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

  def destroy
    if current_user.is_admin?
      Report.find(params[:id]).destroy
    end
        redirect_to adminreports_path
  end
  
  
  private
  
    def report_params
      params.require(:report).permit(:user_id, :problem, :reported_user_id)
    end
  
end
