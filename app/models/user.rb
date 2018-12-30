class User < ApplicationRecord
    has_many :target_datum
    belongs_to :spending_datum

    validates :username, uniqueness: true, presence: true
    has_secure_password
end
