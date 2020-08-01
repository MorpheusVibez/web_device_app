class DevicesController < ApplicationController
before_action :require_logged_in
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
        # binding.pry
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @device = @user.devices.find_by(id: params[:id])
            if @device.nil?
                redirect_to user_devices_path(current_user)
            end
        else
        find_device
        end
    end

    def edit
        # binding.pry
        if params[:user_id] == current_user.id.to_s
            user = User.find_by(id: params[:user_id])
            if user.nil?
                redirect_to users_path, alert: "User not found"
            else
                @device = user.devices.find_by(id: params[:id])
                redirect_to user_devices_path(current_user.id), alert: "Device not found" if @device.nil?
            end
        else
            find_device
        end
    end

    def update
        find_device
        
        if params[:device][:user_id] == current_user.id.to_s
        @device.update(device_params)
        if @device.save
            redirect_to @device
            
        end
        else 
            binding.pry
            redirect_to edit_user_device_path(current_user)#, flash: "Not Your Device"
        end
    end

    def destroy
        find_device
        @device.destroy
        flash[:notice] = "device deleted."
        redirect_to devices_path
    end

    private

        def device_params
            params.require(:device).permit(:name, :storage_size_in_GB, :color, :app_id, :user_id, :app_id)
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
