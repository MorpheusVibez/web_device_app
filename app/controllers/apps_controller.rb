class AppsController < ApplicationController
    
    def new

    end

    def create

    end

    def index

    end

    def show
        @app = App.find_by(id: params[:id])
    end

    def edit

    end

    def destroy

    end

    private

    def app_params
        params.require(:app).permit(:name, :description, :category, :storage_size, :device_id)
    end
    
end
