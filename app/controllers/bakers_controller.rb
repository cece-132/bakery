class BakersController < ApplicationController
  def index
    @bakers = Baker.all
  end

  def show
    @baker = Baker.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
  end

  private

  def baker_params
    
  end
end
