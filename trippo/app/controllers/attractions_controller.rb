class AttractionsController < ApplicationController
  def new

  end

  def create
  end

  def index
    # @attractions = Attraction.all
    render json: Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
