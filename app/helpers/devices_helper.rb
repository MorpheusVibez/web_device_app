module DevicesHelper

    def device_select(device, path)
        select_tag "device[app_id]", options_from_collection_for_select(App.all, :id, :name), include_blank: true
    end
end
