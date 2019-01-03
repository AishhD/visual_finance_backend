class AgeOptionSerializer < ActiveModel::Serializer
    attributes :id, :food_non_alcholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport, :other
end