module AppsHelper
    # def display_user_device(device)
    #     device.device.nil? ? link_to("Add device", edit_app_path(device)) : link_to(device.app, app_path(device.app))
    #   end
    
      def user_select_device(app, path)
        if app.devices.ids && path == "nested"
          hidden_field_tag "[devices][id]", app.devices.app_id
        else
        #   select_tag "device[device_id]", options_from_collection_for_select(Device.all, :id, :name), include_blank: true
          select_tag "", options_from_collection_for_select(Device.all, :id, :name), include_blank: true
        end
      end
    
    #   def display_name_device(app, path)
    #     if app.devices && path == "nested"
    #       app.devices.name
    #     end
    #   end
end
