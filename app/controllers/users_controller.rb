class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # raise params.inspect
        @user = User.create(user_params)
        # session[:user_id] = @user.id
        render :show

    end

    def show
        
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :password_confirmation, :name, :location)
    end
end
