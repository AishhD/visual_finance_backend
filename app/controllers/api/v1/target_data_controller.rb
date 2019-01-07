class Api::V1::TargetDatasController < ApplicationController
  def index
      @target_datum = TargetDatum.all
      render json: @target_datum
  end

  def show
    @target_data = TargetDatum.find_by(id: params[:id])
    if @target_data
        render json: @target_data
    else
        render json: {error: "This target data was not found"}, status: 404
    end
  end

  def create
    @target_data = TargetDatum.new(user_params)
    if @target_data.save
        render json: @target_data
    else
        render json: {error: "Unable to add this target data"}, status: 400
    end
  end

  private

   def target_data_params
       params.require(:target_data).permit(:food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other, :user_id, :date)
   end

end
