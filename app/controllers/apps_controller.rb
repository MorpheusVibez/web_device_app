class AppsController < ApplicationController
    
    def new

    end

    def create

    end

    def index

    end

    def show

    end

    def edit

    end

    def destroy

    end

    private

    def app_params
        params.require(:app).permit(:name, :description, :category, :storage_size)
    end
    
end
