class Api::V1::BudgetsController < ApplicationController
  belongs_to :account
  has_one :saving_types
  has_many :spending_targets
end
