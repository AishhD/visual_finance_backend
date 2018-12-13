class Api::V1::SpendingDatasController < ApplicationController
  def index
      @spending_datum = SpendingDatum.all
      render json: @spending_datum
  end

  def show
    @spending_data = SpendingDatum.find_by(id: params[:id])
    if @spending_data
        render json: @spending_data
    else
        render json: {error: "This target data was not found"}, status: 404
    end
  end

  def create
    @spending_data = SpendingDatum.new(user_params)
    if @spending_data.save
        render json: @spending_data
    else
        render json: {error: "Unable to add this target data"}, status: 400
    end
  end

  private


  def spending_data_params
    params.require(:spending_data).permit(:food_non_alcholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other, :user_id, :date)
  end


end
