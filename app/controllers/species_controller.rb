class SpeciesController < ApplicationController
  
  def index
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
  
  private
  
  def species_params
    params.require(:species).permit(:latinName, :commonName)
  end
  
end
