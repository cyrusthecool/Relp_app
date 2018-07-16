class RestaurantsController < ApplicationController

  def index
    @restaurants =Restaurant.all
  end

  def show
    @restaurant = Restaurant.find params[:id]
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
      # Whitelist of permitted params
      params.require(:restaurant).permit(:name, :image, :nationality_id, :website, :address, :phone)
    end

  end
