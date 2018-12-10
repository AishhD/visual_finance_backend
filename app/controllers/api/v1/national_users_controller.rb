class Api::V1::NationalUsersController < ApplicationController
  has_one :budgets
  has_many :answers
end
