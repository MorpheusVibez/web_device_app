class Device < ApplicationRecord
    belongs_to :users, optional: :true
    has_many :apps
end
