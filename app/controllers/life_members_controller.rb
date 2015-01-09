class LifeMembersController < ApplicationController
  def index
    @life_member = LifeMember.new
    @life_members = LifeMember.all
  end

  def create
    @life_member = LifeMember.new(life_params)
    if @life_member.save
      redirect_to life_members_path
    end
  end

  def edit
    @life_member = LifeMember.find(params[:id])
  end


 


 
  def life_params
    params.require(:life_member).permit(:name, :period)
  end

end
