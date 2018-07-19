class RestaurantsController < ApplicationController
  before_action :check_for_login, except: [:index, :show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
        # raise
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create restaurant_params
    redirect_to restaurant # GET show page
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    restaurant = Restaurant.find params[:id]
    restaurant.update restaurant_params
    redirect_to restaurant
  end

  def destroy
    restaurant = Restaurant.find params[:id]
    restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :image, :website, :address, :phone)
  end

def map
  @restaurant = Restaurant.find params[:id]
      results = Geocoder.search("#{@restaurant.address}")
      coordinates = results.first.coordinates
      @latitude = coordinates.first
      @longitude = coordinates.last
end

end
