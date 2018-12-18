class SpendingCategory < ApplicationRecord
    has_one :city_option
    has_one :children_option
    has_one :age_option
end
