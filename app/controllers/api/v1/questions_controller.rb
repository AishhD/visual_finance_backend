class Api::V1::QuestionsController < ApplicationController
  has_many :options
  has_one :answer
end
