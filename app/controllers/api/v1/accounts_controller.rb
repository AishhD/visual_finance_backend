class Api::V1::AccountsController < ApplicationController
  belongs_to :user
  has_one :budget
end
