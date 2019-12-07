class Encyclopedia::SpeciesController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :delete]
  def index
    @species = Species.all
  end

  def show; end

  def new
  end

  def create
    @species = Species.create(species_params)
    if @species.save
      redirect_to @species
    else
      render :new
    end
  end

  def edit; end

  def update
    @species.update(species_params)
    if @species.save
      redirect_to [:encyclopedia, @species]
    else
      render :edit
    end
  end

  def delete
    @species.delete
    redirect_to species_route
  end

  private
    def species_params
      params.require(:species).permit(:name, :description)
    end

    def set_record
      @species = Species.find(params[:id])
    end
end
