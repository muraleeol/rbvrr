class CouncilMembersController < ApplicationController

  def index
    @council_members = CouncilMember.all
    @council_member = CouncilMember.new
  end

  def edit
    @council_member = CouncilMember.find(params[:id])
  end
  
  def show
    @council_member = CouncilMember.find(params[:id])
  end

  def create
    @council_member = CouncilMember.new(council_params)
    if @council_member.save
      redirect_to council_members_path
    end
  end
  
  def council_params
    params.require(:council_member).permit(:name, :post_held)
  end
end
