class UsersController < ApplicationController

    def index
        all_users
    end
    
    def new
       new_user
       @devices = Device.all
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
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          # Handle a successful update.
          render :show
        else
          render :edit
        end
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
