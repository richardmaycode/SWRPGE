# frozen_string_literal: true

module Encyclopedia
  # Controller for sources class
  class SourcesController < ApplicationController
    before_action :set_record, only: %i[show edit update delete]
    def index
      @sources = Source.all
    end

    def show; end

    def new
      @source = Source.new
    end

    def create
      @source = Source.create(source_params)
      if @source.save
        redirect_to [:encyclopedia, @source]
      else
        render :new
      end
    end

    def edit; end

    def update
      @source.update(source_params)
      if @source.save
        redirect_to [:encyclopedia, @source]
      else
        render :edit
      end
    end

    def delete
      @source.destroy
      redirect_to %i[encyclopedia sources]
    end

    private

    def source_params
      params.require(:source).permit(:name)
    end

    def set_record
      @source = Source.find(params[:id])
    end
  end
end
