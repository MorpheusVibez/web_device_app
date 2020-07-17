class App < ApplicationRecord
    belongs_to :devices, optional: :true
    has_many :users, through: :devices
end
