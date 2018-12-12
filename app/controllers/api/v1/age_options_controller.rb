class Api::V1::AgeOptionsController < ApplicationController

  def index
      @age_options = AgeOption.all
      render json: @age_options
  end

  def show
     @age_option = AgeOption.find_by(id: params[:id])
     if @age_option
         render json: @age_option
     else
         render json: {error: "This age category was not found"}, status: 404
     end
 end

end
