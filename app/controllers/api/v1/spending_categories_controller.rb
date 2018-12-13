class Api::V1::SpendingCategoriesController < ApplicationController

  def index
      @spending_categories = SpendingCategory.all
      render json: @spending_categories
  end

  def show
     @spending_category = SpendingCategory.find_by(id: params[:id])
     if @spending_category
         render json: @spending_category
     else
         render json: {error: "This category was not found"}, status: 404
     end
  end




end
