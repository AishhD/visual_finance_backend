class NationalAverageSerializer < ActiveModel::Serializer
  attributes :id, :national_average
  belongs_to :spending_category
end
