class SpeciesController < ApplicationController
  
  def index
    @species = Species.all.order('created_at DESC')
  end
  
  def new
    @species = Species.new
  end
  
  def create
    @species = Species.new(species_params)
    
    if @species.save
      redirect_to @species
    else
      render 'new'
    end 
  end
  
  def show
    @species = Species.find(params[:id])
  end
  
  private
  
  def species_params
    params.require(:species).permit(:latinName, :commonName, :description)
  end
  
end
