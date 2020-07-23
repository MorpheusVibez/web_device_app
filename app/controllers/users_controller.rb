class UsersController < ApplicationController

    def index
        all_users
    end
    
    def new
       new_user
    end

    def create
        # raise params.inspect
        @user = User.create(user_params)
        session[:user_id] = @user.id
        render :show
    end

    def show
        @user = User.find(params[:id])
    end

    def edit

    end

    def update

    end

    def login
        @users = User.all
        @user = User.new
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :name, :location)
    end

    def all_users
        @users = User.all
    end

    def new_user
        @user = User.new
    end
end
