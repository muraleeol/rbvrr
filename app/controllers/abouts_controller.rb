class AboutsController < ApplicationController
  def index
    @abouts = About.all
  end

  def new
    @about = About.new
  end
  
  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to abouts_path
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      redirect_to abouts_path
    end
  end
    
 

  def about_params
    params.require(:about).permit(:content)
  end

 

end
