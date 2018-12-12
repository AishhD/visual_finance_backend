class SpendingCategory < ApplicationRecord
  belongs_to :city_option, optional: true
  belongs_to :age_option, optional: true
end
