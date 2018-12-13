class User < ApplicationRecord
    has_many :target_datum
    has_many :spending_datum

    validates :username, uniqueness: true, presence: true
    has_secure_password
end
