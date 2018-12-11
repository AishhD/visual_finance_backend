class Api::V1::UsersController < ApplicationController
  has_many :target_data, :spending_data

end
