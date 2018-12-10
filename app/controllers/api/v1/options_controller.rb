class Api::V1::OptionsController < ApplicationController
  belongs_to :question
  has_one :answer
end
