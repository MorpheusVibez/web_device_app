class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # raise params.inspect
        @user = User.create(user_params)
        # session[:user_id] = @user.id
        redirect_to @user

    end

    def show
        
    end

    def signin
        @users = User.all
        @user = User.new
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :password_confirmation, :name, :location)
    end
end
