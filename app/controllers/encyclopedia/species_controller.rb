# frozen_string_literal: true

module Encyclopedia
  # Controler for the species class
  class SpeciesController < ApplicationController
    before_action :set_record, only: %i[show edit update delete]
    def index
      @species = Species.all
    end

    def show; end

    def new
			@species = Species.new
			@species.build_character_stat
    end

    def create
			@species = Species.new(species_params)
      if @species.save
        redirect_to [:encyclopedia, @species]
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
      params.require(:species).permit(
        :name, :description, :source_id,
        character_stat_attributes:
          %i[id brawn agility
             intellect cunning
             willpower presence
             wound_threshold
             strain_threshold
             experience]
      )
    end

    def set_record
      @species = Species.find(params[:id])
    end
  end
end
