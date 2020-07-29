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
end
