class Api::V1::CityOptionsController < ApplicationController

  def index
      @city_options = CityOption.all
      render json: @city_options
  end

  def show
     @city_option = CityOption.find_by(id: params[:id])
     if @city_option
         render json: @city_option
     else
         render json: {error: "This city category was not found"}, status: 404
     end
   end
end
