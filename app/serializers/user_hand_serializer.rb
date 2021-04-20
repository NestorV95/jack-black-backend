class UserHandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :bet, :user, :game
  belongs_to :user 
  belongs_to :game
end
