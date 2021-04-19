class User < ApplicationRecord
    has_many :user_hands
    has_many :games, through: :user_hands
end
