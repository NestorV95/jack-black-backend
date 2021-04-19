class DealerHandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :dealer, :game
  belongs_to :dealer
  belongs_to :game
end
