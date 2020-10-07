class UsersController < ApplicationController

  def destroy

  end

  def show
    # unless @user == current_user
    #   redirect_to root_path(@user)
    # end
    @casa = Casa.where(params[:id])
  end

end
