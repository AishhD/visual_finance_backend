class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :location, :children
  has_one :spending_datum
  has_many :target_datum
  # class SpendingDatumSerializer < ActiveModel::Serializer
  #   attributes :id, :food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
  # end
  class TargetDatumSerializer < ActiveModel::Serializer
    attributes :id, :food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
  end
end
