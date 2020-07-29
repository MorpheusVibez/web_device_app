class DevicesController < ApplicationController
before_action :require_logged_in, only: [:new, :create, :edit, :update]
    def new
        new_device
    end

    def create
        @device = Device.new(device_params)
        # raise params.inspect
        if @device.save
            redirect_to device_path(@device)
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
            if @device.user_id == nil
                @device.user_id = current_user.id
                @device.save
                redirect_to(@device)
            # else render :edit
            end
          # Handle a successful update.
          redirect_to(@device)
        else
          render :edit
        end
    end

    def destroy

    end

    private

        def device_params
            params.require(:device).permit(:name, :storage_size_in_GB, :color)
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
