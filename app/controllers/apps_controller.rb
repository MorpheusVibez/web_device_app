class AppsController < ApplicationController
    before_action :require_logged_in
    def new
        new_app
    end

    def create
        @app = App.new(app_params)
                raise params.inspect
                # binding.pry
                # add_to_device
        if @app.save
            redirect_to app_path(@app)
        else
            render :new
        end
    end

    def index
        all_apps
    end

    def show
        binding.pry
        # if params[:user_id]
            # @user = User.find_by(id: params[:user_id])
            # @app = @user.apps.find_by(id: params[:id])
            # @device = Device.find_by(app_id: @app.id)
            # if @app.nil?
                # redirect_to user_apps_path(current_user)
            # end
        # else
            find_app
            # @device = Device.find(find_app.device_id)
        # end       
    end

    def edit
        # binding.pry
        if params[:user_id] == current_user.id.to_s
            user = User.find_by(id: params[:user_id])
            device = Device.find_by(user_id: params[:user_id])
            if user.nil?
                redirect_to users_path
            else
                binding.pry
                @app = device.app_id
                if @app.nil?
                    redirect_to new_user_app_path(user.id)
                else
                redirect_to edit_user_app_path(current_user.id)
                end
            end
        else
            binding.pry
            find_app
        end
    end

    def update
        binding.pry
        find_app
        if params[:app][:device_id] == current_user.devices.app_id.to_s
            @app.update(app_params)
            if @app.save
                redirect_to @app
            end
        else
            binding.pry
            redirect_to edit_user_app_path(current_user)
        end
    end

    def destroy
        find_app
        @app.destroy
        redirect_to apps_path
    end

    private

    def app_params
        params.require(:app).permit(:name, :description, :category, :storage_size_in_MB, devices_attributes: [:id])
    end

    def all_apps
        @apps = App.all
    end

    def new_app
        @app = App.new
    end

    def find_app
        @app = App.find(params[:id])
    end  
    
    def add_to_device
        binding.pry
        current_user.devices.each do |d|
            d.app_id == @app.id
        end
    end


    
end
