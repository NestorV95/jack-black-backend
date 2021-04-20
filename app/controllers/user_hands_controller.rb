class UserHandsController < ApplicationController
# before_action :find_user_hand only: [:show, :update, :destroy]

    def index 
        user_hands = UserHand.all 
        render json: UserHandSerializer.new(user_hands)
    end 

    def show 
        user_hand = UserHand.find_by(id: params[:id]) 
        render json: UserHandSerializer.new(user_hand)
    end

    def create
        user_hand = UserHand.create(user_hand_params)
        render json: UserHandSerializer.new(user_hand)
    end

    def update
        user_hand = UserHand.find_by(id: params[:id])
        UserHand.update(user_hand_params)
        render json: UserHandSerializer.new(user_hand)
    end

    def destroy
        user_hand = UserHand.find_by(id: params[:id]) 
        UserHand.delete
        render json: UserHandSerializer.new(user_hand)
    end

    private 

    def find_user_hand
        user_hand = UserHand.find_by(id: params[:id]) 
    end

    def user_hand_params
        params.require(:userhand).permit(:bet, :user_id, :game_id)
    end

end
