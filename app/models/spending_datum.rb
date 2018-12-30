class SpendingDatum < ApplicationRecord
    has_one :user, required: false
end
