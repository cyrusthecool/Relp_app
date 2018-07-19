class NationalitiesController < ApplicationController
  def index
    @nationalities = Nationality.all
  end

  def show
    @nationality = Nationality.find params[:id]
  end

  def new
    @nationality = Nationality.new
  end

  def create
    nationality = Nationality.create nationality_params
    redirect_to nationality # GET show page
  end

  def edit
    @nationality = Nationality.find params[:id]
  end

  def update
    nationality = Nationality.find params[:id]
    nationality.update nationality_params
    redirect_to nationality
  end

  def destroy
    nationality = Nationality.find params[:id]
    nationality.destroy
    redirect_to nationalities_path
  end


    private

    def nationality_params
      params.require(:nationality).permit(:name, :famous_food, :food_history)
    end

  end
