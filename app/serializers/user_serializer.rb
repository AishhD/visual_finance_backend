class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :age, :location, :children, :spending_datum
end
