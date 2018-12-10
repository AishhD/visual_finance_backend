class Api::V1::UsersController < ApplicationController
  has_many :answers, :accounts
  belongs_to :national_user
  has_one :budget, through :accounts

end
