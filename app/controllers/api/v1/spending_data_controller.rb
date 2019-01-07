class Api::V1::SpendingDataController < ApplicationController
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
    spending_data = SpendingDatum.create(spending_data_params)
    if spending_data
        render json: spending_data
    else
        render json: {error: "Unable to add this target data"}, status: 400
    end
  end

  def average
    @spending_data = SpendingDatum.all
    @education = @spending_data.sum("education") / @spending_data.count
    @food = @spending_data.sum("food_non_alcoholic_drinks") / @spending_data.count
    @alcohol = @spending_data.sum("alcoholic_drinks_tobacco_narcotics") / @spending_data.count
    @clothing = @spending_data.sum("clothing_footwear") / @spending_data.count
    @household = @spending_data.sum("household_bills") / @spending_data.count
    @recreaction = @spending_data.sum("recreation_culture") / @spending_data.count
    @resturants = @spending_data.sum("resturants_hotels") / @spending_data.count
    @transport = @spending_data.sum("transport") / @spending_data.count
    @other = @spending_data.sum("other") / @spending_data.count

    render json: {
      average_user_spending: "yes",
      spending_category: 
      {food_non_alcoholic_drinks: @food, 
      alcoholic_drinks_tobacco_narcotics: @alcohol, 
      clothing_footwear: @clothing,
      household_bills: @household,
      recreation_culture: @recreaction,
      education: @education,
      resturants_hotels: @resturants,
      transport: @transport,
      other: @other}
    }

  end
  

  private


  def spending_data_params
    params.require(:spending_data).permit(:food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other, :date)
  end


end
