class DealerHandsController < ApplicationController
    # before_action :find_dealer_hand only: [:show, :update, :destroy]
    
    def index 
        dealer_hands = DealerHand.all 
        render json: DealerHandSerializer.new(dealer_hands)
    end 

    def show
        dealer_hand = DealerHand.find_by(id: params[:id]) 
        render json: DealerHandSerializer.new(dealer_hand)
    end 

    def create 
        dealer_hand = DealerHand.create(dealer_hand_params)
        render json: DealerHandSerializer.new(dealer_hand)
    end

    def update 
        dealer_hand = DealerHand.find_by(id: params[:id])
        DealerHand.update(user_hand_params) 
        render json: DealerHandSerializer.new(dealer_hand)
    end

    def destroy 
        dealer_hand = DealerHand.find_by(id: params[:id]) 
        DealerHand.delete
        render json: DealerHandSerializer.new(dealer_hand)
    end

    private 

    def find_dealer_hand
        dealer_hand = DealerHand.find_by(id: params[:id]) 
    end

    def dealer_hand_params
        params.require(:dealerhand).permit(:bet, :dealer_id, :game_id)
    end

end
