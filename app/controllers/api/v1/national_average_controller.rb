class NationalAverageController < ApplicationController
    def index
        @national_average = NationalAverage.all
        render json: @national_average
    end
  
    def show
       @national_average = NationalAverage.find_by(id: params[:id])
       if @national_average
           render json: @national_average
       else
           render json: {error: "The national average was not found"}, status: 404
       end
     end
end

