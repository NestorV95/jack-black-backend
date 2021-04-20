class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :password, :picture, :tokens, :user_hands, :games
  has_many :user_hands
  has_many :games, through: :user_hands
end
