class UserHandsController < ApplicationController

    def index 
        user_hands = UserHand.all 
        render json: UserHandSerializer.new(user_hands)
    end 

    def show 
        user_hand = UserHand.find_by(id: params[:id]) 
        render json: UserHandSerializer.new(user_hand)
    end 

end
