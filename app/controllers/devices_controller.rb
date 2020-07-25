class DevicesController < ApplicationController

    def new
        new_device
    end

    def create
        @device = Device.new(device_params)
        if @device.save
            render :show
        else
            render :new
        end
    end

    def index
        all_devices
    end

    def show
        find_device
    end

    def edit
        find_device
    end

    def update
        find_device
        if @device.update_attributes(device_params)
          # Handle a successful update.
          redirect_to(@show)
        else
          render :edit
        end
    end

    def destroy

    end

    private

        def device_params
            params.require(:device).permit(:name, :storage_size, :color)
        end

        def all_devices
            @devices = Device.all
        end

        def new_device
            @device = Device.new
        end

        def find_device
            @device = Device.find(params[:id])
        end
end
