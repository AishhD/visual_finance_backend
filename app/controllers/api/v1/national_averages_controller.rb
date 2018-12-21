class Api::V1::NationalAveragesController < ApplicationController
    def index
        @national_averages = NationalAverage.all
        render json: @national_averages
    end
  
    def show
       @national_average = NationalAverage.find_by(id: params[:id])
       if @national_average
           render json: @national_averages
       else
           render json: {error: "The national average was not found"}, status: 404
       end
     end
end

