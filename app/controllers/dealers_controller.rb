class DealersController < ApplicationController

    def index 
        dealers = Dealer.all 
        render json: DealerSerializer.new(dealers)
    end 

    def show 
        dealer = Dealer.find_by(id: params[:id]) 
        render json: DealerSerializer.new(dealer)
    end 
    
end
