class Dealer < ApplicationRecord
    has_many :dealer_hands
    has_many :games, through: :dealer_hands
end
