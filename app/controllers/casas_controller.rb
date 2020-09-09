class CasasController < ApplicationController
  def index
  end

  def new
    @casa = Casa.new
    @casa.images.new
  end

  def create
    @casa = Casa.new(casa_params)
    if @casa.save
    else
      render :new
    end
  end

  def show
  end
end
