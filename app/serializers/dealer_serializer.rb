class DealerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :picture, :dealer_hands, :games
  has_many :dealer_hands
  has_many :games, through: :dealer_hands
end
