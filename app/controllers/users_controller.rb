class UsersController < ApplicationController

    def index
        all_users
    end
    
    def new
       new_user
       build_device
    end

    def create
        # raise params.inspect
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def show
        find_user
    end

    def edit
        find_user
        # @user.devices.build
        # raise params.inspect
    end

    def update
        find_user
        if @user.update_attributes(user_params)
            build_device
            binding.pry
          # Handle a successful update.
          redirect_to user_path(@user)
        else
          render :edit
        end
    end

    # def login
    #     all_users
    #     new_user
    # end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :name, :location, devices_attributes: [:name, :storage_size_in_GB, :color])
    end

    def all_users
        @users = User.all
    end

    def new_user
        @user = User.new
    end

    def build_device
       device = @user.devices.build(params[:user][:devices_attributes]['0'].permit!)
       device.user_id = @user.id
    end

    def find_user
        @user = User.find(params[:id])
    end


end
