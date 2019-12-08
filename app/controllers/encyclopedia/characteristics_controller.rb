# frozen_string_literal: true

module Encyclopedia
  # Controller for characteritics model
  class CharacteristicsController < ApplicationController
    def index
      @characteristics = Characteristic.all
    end

    def show
      @characteristic = Characteristic.find(params[:id])
    end
  end
end
