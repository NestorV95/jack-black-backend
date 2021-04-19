class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :min_bet, :max_bet, :user_hands, :users, :dealer_hands, :dealers
  has_many :user_hands
  has_many :users, through: :user_hands
  has_many :dealer_hands
  has_many :dealers, through: :dealer_hands
end
