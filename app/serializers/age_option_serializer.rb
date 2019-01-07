class AgeOptionSerializer < ActiveModel::Serializer
  attributes :id, :age_group
  belongs_to :spending_category
  # class SpendingDatumSerializer < ActiveModel::Serializer
  #   attributes :id, :food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
  # end
end
