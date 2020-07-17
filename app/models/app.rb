class App < ApplicationRecord
    belongs_to :devices, optional: :true
    belongs_to :users
end
