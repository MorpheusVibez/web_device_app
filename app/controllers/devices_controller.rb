class DevicesController < ApplicationController

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

    def device_params
        params.require(:device).permit(:name, :storage_size, :color)
    end
end
