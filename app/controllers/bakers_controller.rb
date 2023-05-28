class BakersController < ApplicationController
  def index
    @bakers = Baker.all
  end

  def show
    @baker = Baker.find(params[:id])
  end

  def new
    @new_baker = Baker.new
  end

  def create
    baker = Baker.new(name: params["name"])
    if baker.save
      redirect_to bakers_path
    else
      redirect_to new_baker_path
      flash[:alert] = "Error #{error_message(baker.errors)}"
    end
  end

end
