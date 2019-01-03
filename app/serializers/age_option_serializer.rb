class AgeOptionSerializer < ActiveModel::Serializer
  attributes :id, :age_group
  belongs_to :spending_category
end
