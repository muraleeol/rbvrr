class OfficeBearersController < ApplicationController
  def index
    @office_bearers = OfficeBearer.find_by_sql "select t.name, t.position, t.year from office_bearers t INNER JOIN (SELECT position, max(year) AS MaxYear from office_bearers group by position) q ON t.position = q.position AND t.year = q.MaxYear;
"
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
