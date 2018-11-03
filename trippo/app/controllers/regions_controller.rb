class RegionsController < ApplicationController
  def new
  end

  def create
  end

  def index
      @regions = Region.all
  end

  def show
    @regions = Region.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def region_params
    params.require(:region).permit(:name, :image, :region_id)
  end

end
