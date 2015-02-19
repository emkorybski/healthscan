class HealthCasesController < ApplicationController
  before_action :set_health_case, only: [:show, :edit, :update, :destroy]
  layout "sidebar"#, only: [:index]

  respond_to :html

  def index
    @health_cases = HealthCase.all
    respond_with(@health_cases)
  end

  def show
    respond_with(@health_case)
  end

  def new
    @health_case = HealthCase.new
    respond_with(@health_case)
  end

  def edit
  end

  def create
    @health_case = HealthCase.new(health_case_params)
    @health_case.save
    respond_with(@health_case)
  end

  def update
    @health_case.update(health_case_params)
    respond_with(@health_case)
  end

  def destroy
    @health_case.destroy
    respond_with(@health_case)
  end

  private
    def set_health_case
      @health_case = HealthCase.find(params[:id])
    end

    def health_case_params
      params.require(:health_case).permit(:description, :user_id)
    end
end
