class Api::V1::SpendingTargetsController < ApplicationController
  belongs_to :budget
  has_one :spending_category
end
