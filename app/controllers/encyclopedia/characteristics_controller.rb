class Encyclopedia::CharacteristicsController < ApplicationController
  def index
    @characteristics = Characteristic.all
  end

  def show
    @characteristic = Characteristic.find(params[:id])
  end
end
