class KidsController < ApplicationController
  def index
    kids = Kid.all

    render json: kids
  end

  def create
    kid = Kid.create(kids_params)
    if kid.save
      render json: kid
    else
      render json: { error: kid.errors.messages }, status: :invalid
    end
  end

  
  private

  def kids_params
    params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end

end
