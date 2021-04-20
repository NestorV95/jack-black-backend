class UsersController < ApplicationController
    # before_action :find_user only: [:show, :update, :destroy]

    def index 
        users = User.all 
        render json: UserSerializer.new(users)
    end 

    def show 
        user = User.find_by(id: params[:id]) 
        render json: UserSerializer.new(user)
    end 

    # def create
    #     user = User.create(user_params)
    #     render json: UserSerializer.new(user)
    # end

    # def update
    #     user = User.find_by(id: params[:id]
    #     render json: UserSerializer.new(user)
    #     user.update(user_params) 
    # end

    # def destroy
    #     user = User.find_by(id: params[:id]) 
    #     render json: UserSerializer.new(user)
    #     user.delete
    # end

    private 

    def find_user
        user = User.find_by(id: params[:id]) 
    end

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :tokens, :picture)
    end
    
end
