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

  private

  def casa_params
    params.require(:casa).permit(:name, :information, :important_information, :detail, :location, :cancel, :policy, :check_in, :check_out, :description, :latitude, :longitude, images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
