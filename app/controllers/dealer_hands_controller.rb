class DealerHandsController < ApplicationController

    def index 
        dealer_hands = DealerHand.all 
        render json: DealerHandSerializer.new(dealer_hands)
    end 

    def show
        dealer_hand = DealerHand.find_by(id: params[:id]) 
        render json: DealerHandSerializer.new(dealer_hand)
    end 
    
end
