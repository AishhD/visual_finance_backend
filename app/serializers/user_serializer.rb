class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :age, :location, :children, :spending_datum
  has_many :spending_datum
  has_many :target_datum
  # class SpendingDatumSerializer < ActiveModel::Serializer
  #   attributes :id, :food_non_alcholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
  # end
  # class TargetDatumSerializer < ActiveModel::Serializer
  #   attributes :id, :food_non_alcholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
  # end
end
