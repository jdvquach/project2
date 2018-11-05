class AttractionsController < ApplicationController



  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.save
    redirect_to attractions_path
  end

  def index
    @attractions = Attraction.all
    # render json: Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
    lat=(@attraction.lat).to_f
    lng=(@attraction.long).to_f
    url= "http://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lng}&units=metric&APPID=e96ba79e3a38e2e8a4b5ab62c5394a07"

    puts "URL: #{url}"

    @weather = HTTParty.get( url )

  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    attraction = Attraction.find(params[:id])
    attraction.update conflict_params  #update using partial attraction_params
    redirect_to attraction_path(attraction.id)
  end

  def destroy
    attraction = Attraction.find(params[:id])
    attraction.destroy
    redirect_to attractions_path
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :address, :lat, :long, :description, :image, :region_id)  #permission to enter and update these fields
  end
end
