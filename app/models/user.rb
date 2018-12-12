class User < ApplicationRecord
    has_many :target_datum
    has_many :spending_datum
end
