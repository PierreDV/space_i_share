class SquaresController < ApplicationController

  def new
    @square = Square.new
  end

  def create
    @square = Square.new(square_params)
    if @square.save
      redirect_to @user
    else
      render :new
    end
  end


  protected

  def user_params
    params.require(:square).permit(:color, :parent_div, :user_id)
  end

end
