class Api::V1::HouseholdSpendingsController < ApplicationController

    def index
        @houshold_spendings = HouseholdSpending.all
        render json: @houshold_spendings
    end

end
