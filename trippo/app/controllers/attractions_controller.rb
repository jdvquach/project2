class AttractionsController < ApplicationController



  def new

  end

  def create
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
  end

  def update
  end

  def destroy
  end
end
