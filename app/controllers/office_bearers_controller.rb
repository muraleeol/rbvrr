class OfficeBearersController < ApplicationController
  def index
    @office_bearers = OfficeBearer.all
    @office_bearer = OfficeBearer.new
  end
  
  def edit
    @office_bearer = OfficeBearer.find(params[:id])
  end

  def create
    @office_bearer = OfficeBearer.new(office_bearer_params)
    if @office_bearer.save
      redirect_to office_bearers_path
    end
  end

  def office_bearer_params
    params.require(:office_bearer).permit(:position, :year, :name)
  end



end
