class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id

    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :name, :location)
    end
end
