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
    lat=(@attraction.latitude)
    lng=(@attraction.longitude)
    url= "http://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lng}&units=metric&APPID=e96ba79e3a38e2e8a4b5ab62c5394a07"

    @weather = HTTParty.get( url )


    @venues = Attraction.near([lat, lng],20, :units=>:km)  #attractions with 20km of marker


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

  def search
    @query = "#{params[:query]}"
    @attractions = Attraction.where('name iLIKE :search OR description iLIKE :search OR tags iLIKE :search ', search: "%#{@query}%")

  end

  def address
    [address]
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :address, :latitude, :longitude, :description, :image, :region_id)  #permission to enter and update these fields
  end

end
