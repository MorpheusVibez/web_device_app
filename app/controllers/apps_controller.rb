class AppsController < ApplicationController
    
    def new
        new_app
    end

    def create
        @app = App.new(app_params)
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
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @app = @ user.apps.find_by(id: params[:id])
            if @app.nil?
                redirect_to user_apps_path(current_user)
            end
        else
            find_app
        end       
    end

    def edit
        if params[:user_id] == current_user.id.to_s
            user = User.find_by(id: params[:user_id])
            if user.nil?
                redirect_to users_path
            else
                @app = user.apps.find_by(id: params[:id])
                redirect_to user_apps_path(current_user.id)
            end
        else
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
        params.require(:app).permit(:name, :description, :category, :storage_size, :device_id)
    end

    def all_apps
        @apps = App.all
    end

    def new_app
        @app = App.new
    end

    def find_app
        @app = app.find(params[:id])
    end    
    
end
