module UsersHelper
  def find_user
    User.find(params[:user_id])
  end

    def display_user(device)
        device.user.nil? ? link_to("Add User", edit_device_path(device)) : link_to(device.user, user_path(device.user))
      end
    
      def user_select(device, path)
        if device.user && path == "nested"
          hidden_field_tag "device[user_id]", device.user_id
        else
          select_tag "device[user_id]", options_from_collection_for_select(User.all, :id, :username), include_blank: true
        end
      end
    
      def display_name(device, path)
        if device.user && path == "nested"
          device.user.name
        end
      end

      def display_user_device(app)
        app.devices.nil? ? link_to("Add App", edit_app_path(app)) : link_to(app.devices, app_path(app.devices))
      end
    
      def user_select_device(app, path)
        if app.devices && path == "nested"
          hidden_field_tag "app[device_id]", app.device_id
        else
          select_tag "app[device_id]", options_from_collection_for_select(Device.all, :id, :name), include_blank: true
        end
      end
    
      def display_name_device(app, path)
        if app.devices && path == "nested"
          app.devices.name
        end
      end
end
