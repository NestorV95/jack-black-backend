class Game < ApplicationRecord
    has_many :user_hands
    has_many :users, through: :user_hands
    has_many :dealer_hands
    has_many :dealers, through: :dealer_hands
end
