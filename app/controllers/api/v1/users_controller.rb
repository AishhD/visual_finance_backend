class Api::V1::UsersController < ApplicationController
  has_many :answers, :accounts
  has_one :national_user
  has_one :budget, through :accounts

end
