class User < ApplicationRecord
    has_many :target_datum
    has_one :spending_datum, required: false

    validates :username, uniqueness: true, presence: true
    has_secure_password
end
